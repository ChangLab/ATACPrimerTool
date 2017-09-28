# ATAC Primer Tool

Version: 1

Description: Predicts optimal regions for ATAC qPCR primers.

Date: 2017-08-04

Updated by : kdriest@stanford.edu

## Installing

This repo uses [pypiper](https://github.com/epigen/pypiper) to run a pipeline for a single sample, and [looper](https://github.com/epigen/looper) to handle multi-samples job submission for a project. You can do a user-specific install of both like this:

```
pip install --user https://github.com/epigen/pypiper/zipball/master
pip install --user https://github.com/epigen/looper/zipball/master
```
## Configuring yaml files

Run the command 
```
python path/to/ATACqPCR/pipelines yaml_config.py path/to/ATACqPCR
```
 to configure yaml files with user-specific paths.

## Running on a single sample

See example command in [cmd.sh](cmd.sh) or run it with:

```
./cmd.sh
```

## Package dependencies

This pipeline requires the following packages: R, samtools and bedtools (>= version 2.19.0). These packages must be either be in your `$PATH` or paths can be hardcoded by editing [ATACqPCR.yaml](pipelines/ATACqPCR.yaml). 

## Reference genomes

Chromosome sizes for the following reference genomes are available in [genomes](genomes/): hg19, hg38, mm9, mm10.  If you would like to use another reference genome, download [fetchChromSizes](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjR1Oi9-sjVAhUQ7GMKHZ0CChsQFggoMAA&url=http%3A%2F%2Fhgdownload.cse.ucsc.edu%2Fadmin%2Fexe%2Flinux.x86_64%2FfetchChromSizes&usg=AFQjCNFl70SKF51EO0cC9FBsVAIZpLc0kg) and add the path to [ATACqPCR.yaml](pipelines/ATACqPCR.yaml).  In order to output the sequence of optimal regions, you must also have downloaded the reference genome fasta file.

## Input files

APT requires ATAC-seq bam files to design optimal ATAC-qPCR primers.  Bam files can be specific to your cell type of interest and/or downloaded from public repositories such as ENCODE or GEO.  A list of ATAC-seq datasets from a variety of both human and mouse tissue is supplied in the APT manuscript.  

Bam files should be obtained from paired-end sequencing and sorted by position.  

APT also requires the coordinates of the peaks for which primers should be designed.  Coordinates should be supplied in bed file format and match the reference genome to which the bam files were mapped.

## APT Paramters

There are multiple parameters of APT that you can modify to fit your needs, although the default parameters are a good place to start. After running APT on a set of peaks, you can quickly rerun with different parameters using the same output directory and sample name. Output files will not be overwritten.   

The following parameters can be modified:

`-window (--window_size)`: window size in basepairs into which peaks are binned. Default is 100.

`-cov (--coverage)`: cutoff for average spanning fragment coverage.  Default is 3 (or ~500 copies/1ng input library).

`-cor (--correlation)`: cutoff for correlation between number of spanning fragments in window and total peak height across samples.  Default is 0.8.

`-seq (--return_seq)`: whether DNA sequence of optimal primer regions should be returned. Requires reference genome fasta in genomes directory.  Default is false. 

`-plot (--return_plot)`: whether plot of window correlations across peaks should be returned. Default is false.

Modification of the correlation and coverage parameters can be useful to select most optimal primers if large regions are returned or to relax the stringency if no regions are found for some peaks. For peaks with low accessibility, decreasing the coverage cutoff and increasing the amount of input DNA into the qPCR reaction can help.


