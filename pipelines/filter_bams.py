#!/usr/bin/env python
"""
Preprocessing for ATAC qPCR on Galaxy
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

args = parser.parse_args()

# Initialize
outfolder = os.path.abspath(os.path.join(args.output_parent, args.sample_name))
pm = pypiper.PipelineManager(name = "filter_bams", outfolder = outfolder, args = args)
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

# filter bams

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

combined_read_counts = os.path.join(param.outfolder, "read_counts.txt") 
if not os.path.exists(os.path.join(param.outfolder, "read_counts.txt")):
    for filename in os.listdir(filtered_bams):
        if filename.endswith("_read_counts.txt"):
            cmd = "cat " + os.path.join(filtered_bams, filename) + " >> " + combined_read_counts
            pm.run(cmd, lock_name = "read_counts") 

pm.stop_pipeline()
