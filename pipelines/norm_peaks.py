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
parser = pypiper.add_pypiper_args(parser, all_args = True)
#parser = pypiper.add_pypiper_args(parser, groups = ['all'])  # future version

#Add any pipeline-specific arguments
parser.add_argument('-gs', '--genome-size', default="hs", dest='genomeS',type=str, help='genome size for Macs2')
parser.add_argument("-return", "--return_peaks", default="500", dest="returnN",type=int, help="number of peaks to return")
parser.add_argument('-rmdup', "--duplicates-removed", action='store_true', default=False, dest="rmdup", help="bam files already have duplicates removed")
parser.add_argument('-narrowpeak', "--narrowpeak-input", action='store_true', default=False, dest="narrowpeak", help="starting with narrowpeak files")
args = parser.parse_args()

# Initialize
outfolder = os.path.abspath(os.path.join(args.output_parent, args.sample_name))
pm = pypiper.PipelineManager(name = "norm_peaks", outfolder = outfolder, args = args)
ngstk = pypiper.NGSTk(pm=pm)


# Convenience alias 
tools = pm.config.tools
param = pm.config.parameters
res = pm.config.resources

# Set up reference resource according to genome prefix.
gfolder = os.path.join(res.genomes, args.genome_assembly)
res.chrom_sizes = os.path.join(gfolder, args.genome_assembly + ".chromSizes")

output = outfolder
param.outfolder = outfolder

################################################################################
print("Bam file directory: " + args.input[0]) 

pm.report_result("Genome", args.genome_assembly)

Peak_folder = os.path.join(param.outfolder, "peak_calling_" + args.genome_assembly )
ngstk.make_dir(Peak_folder)

rmdup_folder = os.path.join(param.outfolder, "rmdup_bams")
ngstk.make_dir(rmdup_folder)

# Find low variance peaks
if not args.narrowpeak:
    for bamfile in sorted(os.listdir(args.input[0])):
        if bamfile.endswith(".bam"):
            filename = os.path.basename(bamfile).rstrip(".bam")
            bamfile=os.path.join(args.input[0], bamfile)
    
            index = str(bamfile) +".bai"
            cmd = tools.samtools + " index " + bamfile
            pm.run(cmd, index)
        
            if not args.rmdup:
                rmdup_bam =  os.path.join(rmdup_folder, filename + ".rmdup.bam")
                Metrics_file = os.path.join(rmdup_folder, filename + "_picard_metrics_bam.txt")
                picard_log = os.path.join(rmdup_folder, filename + "_picard_metrics_log.txt")
                cmd3 =  tools.picard + " MarkDuplicates "  + " INPUT=" + bamfile + " OUTPUT="
                cmd3 += rmdup_bam + " METRICS_FILE=" + Metrics_file + " VALIDATION_STRINGENCY=LENIENT"
                cmd3 += " ASSUME_SORTED=true REMOVE_DUPLICATES=true > " +  picard_log
                cmd4 = tools.samtools + " index " + rmdup_bam 
                pm.run([cmd3,cmd4], rmdup_bam)
            else:
                shutil.copy(bamfile, rmdup_folder)
                shutil.copy(index, rmdup_folder)
                filename = filename.rstrip(".rmdup")
                rmdup_bam =  os.path.join(rmdup_folder, filename + ".rmdup.bam")

            # shift bam file 
            shift_bed = os.path.join(rmdup_folder ,  filename + ".rmdup.bed")
            cmd = tools.bam2bed_shift + " " +  rmdup_bam 
            pm.run(cmd,shift_bed)

            peak_file= os.path.join(Peak_folder ,  filename + "_peaks.narrowPeak")
            cmd = tools.macs2 + " callpeak "
            cmd += " -t  " + shift_bed 
            cmd += " -f BED " 
            cmd += " -g "  +  str(args.genomeS)
            cmd +=  " --outdir " + Peak_folder +  " -n " + filename 
            cmd += "  -q " + str(param.macs2.q)
            cmd +=  " --shift " + str(param.macs2.shift) + " --nomodel "  
            pm.run(cmd, peak_file)
            
else:
    shutil.copy(args.input[0], Peak_folder)

merged_peak_file = os.path.join(param.outfolder, "MergedPeaks.bed")
cmd = tools.mergePeaks + " MergePeakID "
cmd += os.path.join(Peak_folder, "*_peaks.narrowPeak")
cmd += " | cut -f 1,2,3,4 > " + merged_peak_file
pm.run(cmd, merged_peak_file)

Merged_counts = os.path.join(param.outfolder, "MergedPeaks_counts.bed")
count = 0
for bamfile in sorted(os.listdir(rmdup_folder)):
    if bamfile.endswith(".bam"):
        filename = bamfile.rstrip(".bam")
        bamfile=os.path.join(rmdup_folder, bamfile)
    
        index = str(bamfile) +".bai"
        cmd = tools.samtools + " index " + bamfile
        pm.run(cmd, index)
        if count == 0:
            cmd = tools.bedtools + " coverage "
            cmd += "-a " + merged_peak_file
            cmd += " -b " + bamfile
            cmd += " | cut -f 1,2,3,4,5 > " 
            cmd += Merged_counts
            pm.run(cmd, lock_name= "coverage")
        
            count += 1
        else:
            temp = os.path.join(param.outfolder, "temp.bed")
            Merged_temp = os.path.join(param.outfolder, "Merged_temp.bed")
        
            cmd1 = tools.bedtools + " coverage "
            cmd1 += "-a " + merged_peak_file
            cmd1 += " -b " + bamfile
            cmd1 += " | cut -f 5 > " 
            cmd1 += temp
        
            cmd2 = "paste " + Merged_counts + " "+temp + " > " + Merged_temp
        
            cmd3 = "mv " + Merged_temp + " "+ Merged_counts
        
            pm.run([cmd1, cmd2, cmd3], lock_name="coverage2")
            
pm.clean_add(temp)
pm.clean_add(Merged_temp)     

norm_peak = os.path.join(param.outfolder, "norm_peaks.bed")
cmd = tools.Rscript + " " + tools.norm_counts + " " 
cmd += Merged_counts + " " +str(args.returnN) + " " + norm_peak
pm.run(cmd, norm_peak)

norm_annot = os.path.join(param.outfolder, "norm_peaks_annotated.txt")
cmd = tools.annotate_peaks + " " + norm_peak + " "
cmd += args.genome_assembly + " > " + norm_annot
pm.run(cmd, norm_annot)

pm.stop_pipeline()

