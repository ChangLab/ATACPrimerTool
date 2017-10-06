#!/usr/bin/env python
"""
ATAC Primer Tool
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

#Add any pipeline-specific arguments
parser.add_argument("-corr", "--corr_cutoff", default="0.8", dest="corr_cutoff",type=float, help="cutoff for peak correlation")
parser.add_argument("-cov", "--cov_cutoff", default="3", dest="cov_cutoff",type=int, help="cutoff for spanning read coverage")
parser.add_argument("-window", "--window_size", default="100", dest="window_size",type=int, help="window size")
parser.add_argument("-overlap", "--percent_overlap", default="0.9", dest="percent_overlap",type=float, help="percent of fragment overlap")
parser.add_argument("-fasta", "--genome_fasta", default=False, dest="genome_fasta", help="path to reference genome fasta")
parser.add_argument("-bedpe", "--bedpe_input", action="store_true", default=False, dest="bedpe_input", help="input files are in bedpe format")
parser.add_argument("-counts", "--read_counts", action="store_true", default=False, dest="read_counts", help="pre-generated read counts files in bam file directory")
args = parser.parse_args()

# Initialize
outfolder = os.path.abspath(os.path.join(args.output_parent, args.sample_name))
pm = pypiper.PipelineManager(name = "ATACPrimerTool", outfolder = outfolder, args = args)
ngstk = pypiper.NGSTk(pm=pm)

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

#split peaks into overlapping windows
qPCR_windows = os.path.join(param.outfolder, "qPCR_windows.bed")
cmd = tools.Rscript + " " + tools.make_window_bed + " " + str(args.input2[0]) + " " + str(args.window_size) + " " + str(qPCR_windows)
pm.run(cmd, qPCR_windows)

pm.clean_add(qPCR_windows)

#filter bam files for reads within 2kb of peaks
ext_peak = os.path.join(param.outfolder, "ext_peak.bed")
cmd = tools.bedtools + " slop "
cmd += " -i " + str(args.input2[0]) 
cmd += " -g " + str(res.chrom_sizes)
cmd += " -b 2000 "
cmd += "| sort -k1,1 -k2,2n - > " + ext_peak
pm.run(cmd, ext_peak)

pm.clean_add(ext_peak)

filtered_inputs = os.path.join(param.outfolder, "filteredinputs/")
if not os.path.exists(filtered_inputs):
    os.mkdir(filtered_inputs)
count = 0

if args.bedpe_input:
    for bedfile in sorted(os.listdir(args.input[0])):
        if bedfile.endswith(".bedpe"):
            filename = os.path.splitext(bedfile)[0]
            bedfile = os.path.join(args.input[0], bedfile)
            
            read_counts = os.path.join(filtered_inputs, filename + "_read_counts.txt")
            cmd = "wc -l < " + bedfile 
            cmd += " > " + read_counts
            pm.run(cmd,read_counts)
            
            filterbedpe = os.path.join(filtered_inputs, filename + ".filter.bedpe")
            cmd = tools.bedtools + " intersect -a "
            cmd += ext_peak + " -b " + bedfile
            cmd += " -sorted -wb > " + filterbedpe
            pm.run(cmd, filterbedpe)
            pm.clean_add(filterbedpe)
            
            includeinsert = os.path.join(filtered_inputs, filename + ".includeinsert.bed")
            cmd = "cut -f 5,6,10 " + filterbedpe
            cmd += " > " + includeinsert
            pm.run(cmd, includeinsert) 
            
            filterbed = os.path.join(filtered_inputs, filename + ".filter.bed")
            cmd1 = "cut -f 5,6,7 " + filterbedpe
            cmd1 += " > "  + filterbed
            cmd2 = "cut -f 8,9,10 " + filterbedpe
            cmd2 += " >> " + filterbed
            pm.run([cmd1, cmd2], filterbed)
            
            
else:
    for bamfile in sorted(os.listdir(args.input[0])):
        if bamfile.endswith(".bam"):
            filename = os.path.splitext(bamfile)[0]
            bamfile=os.path.join(args.input[0], bamfile)
    
            index = str(bamfile) +".bai"
            cmd = tools.samtools + " index " + bamfile
            pm.run(cmd, index)
    
            read_counts = os.path.join(filtered_inputs, filename + "_read_counts.txt")
            cmd = tools.samtools + " view "
            cmd += "-c -F 1284 " 
            cmd += bamfile
            cmd += " > " + str(read_counts)
            pm.run(cmd, read_counts)
    
            filterbam = os.path.join(filtered_inputs, filename + ".filter.bam")
            cmd = tools.samtools + " view "
            cmd += "-b -F 4 -L "
            cmd += ext_peak + " " + bamfile
            cmd += " > " + filterbam
            pm.run(cmd, filterbam)
            
            includeinsert = os.path.join(filtered_inputs, filename + ".includeinsert.bed")
            cmd = tools.samtools + " sort -n " 
            cmd += filterbam + " | "
            cmd += tools.samtools + " fixmate - - | "
            cmd += tools.bedtools + " bamtobed -i - -bedpe | "
            cmd += "cut -f 1,2,6 > " + includeinsert
            pm.run(cmd, includeinsert)
            pm.clean_add(includeinsert)

#counts reads in peaks and number of spanning fragments per window
combined_o = os.path.join(param.outfolder, "combined.o.coverage")
combined_f9 = os.path.join(param.outfolder, "combined.f9.coverage")
for filename in sorted(os.listdir(filtered_inputs)):
    if filename.endswith(".filter.bam") or filename.endswith(".filter.bed"):
        filterbam = os.path.join(filtered_inputs, filename)
        includeinsert = os.path.join(filtered_inputs, os.path.splitext(os.path.splitext(filename)[0])[0] + ".includeinsert.bed")
        
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

#combine read counts
combined_read_counts = os.path.join(param.outfolder, "read_counts.txt") 
if not os.path.exists(os.path.join(param.outfolder, "read_counts.txt")):
    if args.read_counts:
        for filename in sorted(os.listdir(args.input[0])):
            if filename.endswith("_read_counts.txt"):
                cmd = "cat " + os.path.join(args.input[0], filename) + " >> " + combined_read_counts
                pm.run(cmd, lock_name = "read_counts")
    else:
        for filename in sorted(os.listdir(filtered_bams)):
            if filename.endswith("_read_counts.txt"):
                cmd = "cat " + os.path.join(filtered_bams, filename) + " >> " + combined_read_counts
                pm.run(cmd, lock_name = "read_counts") 

#determine optimal qPCR regions
qPCR_regions = os.path.join(param.outfolder, os.path.splitext(str(os.path.basename(args.input2[0])))[0] + "_qPCR_regions_corr" + str(args.corr_cutoff) + "_cov" + str(args.cov_cutoff)+ ".bed")
cmd = tools.Rscript + " " + tools.find_qPCR_regions + " "+ combined_o + " " + combined_f9
cmd += " " + str(args.corr_cutoff) + " "+ str(args.cov_cutoff) + " "
cmd += combined_read_counts + " " + str(param.outfolder) + " " + str(qPCR_regions)
pm.run(cmd, lock_name = "qPCR_regions")

#output DNA sequence of regions
if args.genome_fasta:
    qPCR_regions_seq = os.path.splitext(str(qPCR_regions))[0] + "_seq.bed"
    cmd = tools.bedtools + " getfasta -fi "
    cmd += str(args.genome_fasta) + " -bed " + str(qPCR_regions)
    cmd += " -name -tab -fo " + str(qPCR_regions_seq)
    pm.run(cmd, lock_name = "qPCR_regions_seq")

pm.stop_pipeline()
