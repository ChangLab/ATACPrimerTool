#!/usr/bin/env python
"""
ATAC qPCR pipeline
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
from datetime import datetime

# Argument Parsing from yaml file 
# #######################################################################################
parser = ArgumentParser(description='Pipeline')
parser = pypiper.add_pypiper_args(parser, all_args = True)
#parser = pypiper.add_pypiper_args(parser, groups = ['all'])  # future version

#are only two inputs expected?

#Add any pipeline-specific arguments
parser.add_argument("-corr", "--corr_cutoff", default="0.8", dest="corr_cutoff",type=float, help="cutoff for peak correlation")
parser.add_argument("-cov", "--cov_cutoff", default="3", dest="cov_cutoff",type=int, help="cutoff for spanning read coverage")
parser.add_argument("-plot", "--return_plot", default="FALSE", dest="return_plot",type=str, help="return plot of window correlations")
parser.add_argument("-window", "--window_size", default="100", dest="window_size",type=int, help="window size")
parser.add_argument("-overlap", "--percent_overlap", default="0.9", dest="percent_overlap",type=float, help="percent of fragment overlap")
args = parser.parse_args()

# Initialize
outfolder = os.path.abspath(os.path.join(args.output_parent, args.sample_name))
pm = pypiper.PipelineManager(name = "ATACqPCR", outfolder = outfolder, args = args)
ngstk = pypiper.NGSTk(pm=pm) #need??

#cores??

# Convenience alias 
tools = pm.config.tools
param = pm.config.parameters
res = pm.config.resources

# Set up reference resource according to genome prefix.
res.chrom_sizes = os.path.join(res.genomes, args.genome_assembly + ".chromSizes")
cmd = tools.fetchChromSizes + " " + args.genome_assembly + " > " + res.chrom_sizes
pm.run(cmd, res.chrom_sizes)

output = outfolder
param.outfolder = outfolder

################################################################################
print("Bam file directory: " + args.input[0]) 
print("Peak bed file: " + args.input2[0]) 

pm.report_result("Genome", args.genome_assembly)

# ATACqPCR pipeline

qPCR_windows = os.path.join(param.outfolder, "qPCR_windows.bed")
cmd = tools.Rscript + " " + tools.make_window_bed + " " + str(args.input2[0]) + " " + str(args.window_size) + " " + str(qPCR_windows)
pm.run(cmd, qPCR_windows)

pm.clean_add(qPCR_windows)

ext_peak = os.path.join(param.outfolder, "ext_peak.bed")
cmd = tools.bedtools + " slop "
cmd += " -i " + str(args.input2[0]) 
cmd += " -g " + str(res.chrom_sizes)
cmd += " -b 2000 "
cmd += "> " + ext_peak
pm.run(cmd, ext_peak)

pm.clean_add(ext_peak)

filtered_bams = os.path.join(param.outfolder, "filteredbams/")
if not os.path.exists(filtered_bams):
    os.mkdir(filtered_bams)
count = 0
for bamfile in sorted(os.listdir(args.input[0])):
    if bamfile.endswith(".bam"):
        filename = bamfile.rstrip(".bam")
        bamfile=os.path.join(args.input[0], bamfile)
    
        index = str(bamfile) +".bai"
        cmd = tools.samtools + " index " + bamfile
        pm.run(cmd, index)
    
        read_counts = os.path.join(filtered_bams, filename + "_read_counts.txt")
        cmd = tools.samtools + " view "
        cmd += "-c -F 1284 " 
        cmd += bamfile
        cmd += " > " + str(read_counts)
        pm.run(cmd, read_counts)
        
        pm.clean_add(read_counts)
    
        filterbam = os.path.join(filtered_bams, filename + ".filter.bam")
        cmd = tools.samtools + " view "
        cmd += "-b -L "
        cmd += ext_peak + " " + bamfile
        cmd += " > " + filterbam
        pm.run(cmd, filterbam)

combined_o = os.path.join(param.outfolder, "combined.o.coverage")
combined_f9 = os.path.join(param.outfolder, "combined.f9.coverage")
for filename in sorted(os.listdir(filtered_bams)):
    if filename.endswith(".filter.bam"):
        filterbam = os.path.join(filtered_bams, filename)
        
        includeinsert = os.path.join(param.outfolder, filename.strip("filter.bam") + ".includeinsert.bed")
        cmd = tools.samtools + " sort -n " 
        cmd += filterbam + " | "
        cmd += tools.samtools + " fixmate - - | "
        cmd += tools.bedtools + " bamtobed -i - -bedpe | "
        cmd += "cut -f 1,2,6 > " + includeinsert
        pm.run(cmd, includeinsert)
        
        pm.clean_add(includeinsert)
        
        if count == 0:
            cmd1 = tools.bedtools + " coverage "
            cmd1 += "-a " + qPCR_windows
            cmd1 += " -b " + filterbam
            cmd1 += " | cut -f 1,2,3,4,5 > " 
            cmd1 += combined_o
        
            cmd2 = tools.bedtools + " coverage "
            cmd2 += "-a " + qPCR_windows
            cmd2 += " -b " + includeinsert
            cmd2 += " -f " + str(args.percent_overlap)
            cmd2 += " | cut -f 1,2,3,4,5 > "
            cmd2 += combined_f9 
            pm.run([cmd1, cmd2], lock_name= "coverage")
        
            count += 1
        else:
            temp_o = os.path.join(param.outfolder, "temp.o.bed")
            temp_f9 = os.path.join(param.outfolder, "temp.f9.bed")
            combined_temp_o = os.path.join(param.outfolder, "combined.temp.o.bed")
            combined_temp_f9 = os.path.join(param.outfolder, "combined.temp.f9.bed")
        
            cmd1 = tools.bedtools + " coverage "
            cmd1 += "-a " + qPCR_windows
            cmd1 += " -b " + filterbam
            cmd1 += " | cut -f 5 > " 
            cmd1 += temp_o
        
            cmd2 = tools.bedtools + " coverage "
            cmd2 += "-a " + qPCR_windows
            cmd2 += " -b " + includeinsert
            cmd2 += " -f " + str(args.percent_overlap)
            cmd2 += " | cut -f 5 > "
            cmd2 += temp_f9
        
            cmd3 = "paste " + combined_o + " "+temp_o + " > " + combined_temp_o
        
            cmd4 = "mv " + combined_temp_o + " "+combined_o
        
            cmd5 = "paste " + combined_f9 + " "+temp_f9 + " > " + combined_temp_f9
        
            cmd6 = "mv " + combined_temp_f9 + " "+combined_f9
            pm.run([cmd1, cmd2, cmd3, cmd4, cmd5, cmd6], lock_name="coverage2")
        
pm.clean_add(temp_o)
pm.clean_add(temp_f9)     
pm.clean_add(combined_o)
pm.clean_add(combined_f9) 
combined_read_counts = os.path.join(param.outfolder, "read_counts.txt") 
if not os.path.exists(os.path.join(param.outfolder, "read_counts.txt")):
    for filename in os.listdir(filtered_bams):
        if filename.endswith("_read_counts.txt"):
            cmd = "cat " + os.path.join(filtered_bams, filename) + " >> " + combined_read_counts
            pm.run(cmd, lock_name = "read_counts") 

qPCR_regions = os.path.join(param.outfolder, str(os.path.basename(args.input2[0])).rstrip(".bed") + "_qPCR_regions_corr" + str(args.corr_cutoff) + "_cov" + str(args.cov_cutoff)+ ".bed")
cmd = tools.Rscript + " " + tools.find_qPCR_regions + " "+ combined_o + " " + combined_f9
cmd += " " + str(args.corr_cutoff) + " "+ str(args.cov_cutoff) + " " + str(args.return_plot) + " " 
cmd += combined_read_counts + " " + str(param.outfolder) + " " + str(qPCR_regions)
pm.run(cmd, lock_name = "qPCR_regions")

pm.stop_pipeline()
