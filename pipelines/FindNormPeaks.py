#!/usr/bin/env python
"""
ATACqPCR normalization pipeline
"""
__author__="Katie Yost"
__email__="kdriest@stanford.edu"

from argparse import ArgumentParser
import os,re
import sys
import os.path
import subprocess
import pypiper
import yaml 
import shutil
from datetime import datetime

# Argument Parsing from yaml file 
# #######################################################################################
parser = ArgumentParser(description='Pipeline')
parser = pypiper.add_pypiper_args(parser, groups=["config"], args=["sample-name", "recover", "new-start", "output-parent", "genome"])

#Add any pipeline-specific arguments
parser.add_argument('-I', '--input-dir',required=True, dest='input',type=str, help="path to directory containing input bam files (and narrowpeak files if applicable) (required)")
parser.add_argument('-gs', '--genome-size', default="hs", dest='genomeS',type=str, help='genome size for Macs2')
parser.add_argument("-return", "--return_peaks", default="500", dest="returnN",type=int, help="number of peaks to return")
parser.add_argument('-rmdup', "--duplicates-removed", action='store_true', default=False, dest="rmdup", help="bam files already have duplicates removed")
parser.add_argument('-narrowpeak', "--narrowpeak-input", action='store_true', default=False, dest="narrowpeak", help="starting with narrowpeak files")
args = parser.parse_args()

# Initialize
outfolder = os.path.abspath(os.path.join(args.output_parent, args.sample_name))
pm = pypiper.PipelineManager(name = "FindNormPeaks", outfolder = outfolder, args = args)
ngstk = pypiper.NGSTk(pm=pm)

# Convenience alias 
tools = pm.config.tools
param = pm.config.parameters
res = pm.config.resources

# Set up reference resource according to genome prefix.
gfolder = os.path.join(res.genomes, args.genome_assembly)

output = outfolder
param.outfolder = outfolder

################################################################################
print("Bam file directory: " + args.input) 

pm.report_result("Genome", args.genome_assembly)

Peak_folder = os.path.join(param.outfolder, "peak_calling_" + args.genome_assembly )
ngstk.make_dir(Peak_folder)

rmdup_folder = os.path.join(param.outfolder, "rmdup_bams")
ngstk.make_dir(rmdup_folder)

#Call peaks if narrowPeak files not supplied

for bamfile in sorted(os.listdir(args.input)):
    if bamfile.endswith(".bam"):
        filename = os.path.splitext(os.path.basename(bamfile))[0]
        bamfile=os.path.join(args.input, bamfile)

        index = str(bamfile) +".bai"
        cmd = tools.samtools + " index " + bamfile
        pm.run(cmd, index)
        
        #Remove duplicates if necessary
        if not args.rmdup:
            rmdup_bam =  os.path.join(rmdup_folder, filename + ".rmdup.bam")
            cmd1 =  tools.samtools + " rmdup " + bamfile + " "  + rmdup_bam
            cmd2 = tools.samtools + " index " + rmdup_bam 
            pm.run([cmd1,cmd2], rmdup_bam)
        else:
            rmdup_bam =  bamfile
        
        if not args.narrowpeak:
            #Create bed file
            shift_bed = os.path.join(rmdup_folder ,  filename + ".rmdup.bed")
            cmd = tools.bam2bed_shift + " " +  rmdup_bam 
            pm.run(cmd,shift_bed)
            if args.rmdup:
                shift_bed = os.path.join(args.input, filename + ".bed")
                cmd = "mv " + shift_bed + " " + rmdup_folder
                pm.run(cmd, shift_bed)
            
            #Peak calling with Macs2
            peak_file= os.path.join(Peak_folder ,  filename + "_peaks.narrowPeak")
            cmd = tools.macs2 + " callpeak "
            cmd += " -t  " + shift_bed 
            cmd += " -f BED " 
            cmd += " -g "  +  str(args.genomeS)
            cmd +=  " --outdir " + Peak_folder +  " -n " + filename 
            cmd += "  -q " + str(param.macs2.q)
            cmd +=  " --shift " + str(param.macs2.shift) + " --nomodel "  
            pm.run(cmd, peak_file)
            
if not args.narrowpeak:
    #Create merged peak file
    merged_peak_file = os.path.join(param.outfolder, "MergedPeaks.bed")
    cmd = tools.mergePeaks + " MergePeakID "
    cmd += os.path.join(Peak_folder, "*_peaks.narrowPeak")
    cmd += " | cut -f 1,2,3,4 > " + merged_peak_file
    pm.run(cmd, merged_peak_file)
            
if args.narrowpeak:
    merged_peak_file = os.path.join(param.outfolder, "MergedPeaks.bed")
    cmd = tools.mergePeaks + " MergePeakID "
    cmd += os.path.join(args.input, "*.narrowPeak")
    cmd += " | cut -f 1,2,3,4 > " + merged_peak_file
    pm.run(cmd, merged_peak_file)

#Count reads in each peak
bam_list =""
if not args.rmdup:
    for bamfile in sorted(os.listdir(rmdup_folder)):
        if bamfile.endswith(".bam"):
            filename = os.path.splitext(bamfile)[0]
            bamfile=os.path.join(rmdup_folder, bamfile)
        
            bam_list += " " + bamfile
else:
    for bamfile in sorted(os.listdir(args.input)):
        if bamfile.endswith(".bam"):
            filename = os.path.splitext(bamfile)[0]
            bamfile=os.path.join(args.input, bamfile)
        
            bam_list += " " + bamfile

Merged_counts = os.path.join(param.outfolder, "MergedPeaks_counts.bed")
cmd = tools.bedtools + " multicov "
cmd += "-bams " + bam_list
cmd += " -bed " + merged_peak_file 
cmd += " > " + Merged_counts
pm.run(cmd, Merged_counts)

final_outfolder = os.path.join(param.outfolder, "FindNormPeaks_output/")
if not os.path.exists(final_outfolder):
    os.mkdir(final_outfolder)

#find low variance peaks using DESeq
norm_peak = os.path.join(final_outfolder, "norm_peaks.bed")
cmd = tools.Rscript + " " + tools.norm_counts + " " 
cmd += Merged_counts + " " +str(args.returnN) + " " + norm_peak
pm.run(cmd, norm_peak)

#annotate low variance peaks using homer
norm_annot = os.path.join(final_outfolder, "norm_peaks_annotated.txt")
cmd = tools.annotate_peaks + " " + norm_peak + " "
cmd += args.genome_assembly + " > " + norm_annot
pm.run(cmd, norm_annot)

pm.stop_pipeline()

