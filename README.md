# ATAC Primer Tol

Version: 1

Description: Predicts optimal regions for ATAC qPCR primers.

Date: 2017-08-04

Updated by : kdriest@stanford.edu

## Installing

This repo uses [pypiper](https://github.com/epigen/pypiper) to run the pipeline. You can do a user-specific install 
of both like this:

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

This pipeline requires the following packages: R, samtools and bedtools (>= version 2.19.0). These packages must be either 
be in your `$PATH` or paths can be hardcoded by editing [ATACqPCR.yaml](pipelines/ATACqPCR.yaml). 



## Reference genomes

Chromosome sizes for the following reference genomes are available in [genomes](genomes/): hg19, hg38, mm9, mm10.  
If you would like to use another reference genome, download [fetchChromSizes](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjR1Oi9-sjVAhUQ7GMKHZ0CChsQFggoMAA&url=http%3A%2F%2Fhgdownload.cse.ucsc.edu%2Fadmin%2Fexe%2Flinux.x86_64%2FfetchChromSizes&usg=AFQjCNFl70SKF51EO0cC9FBsVAIZpLc0kg) and add the path to 
[ATACqPCR.yaml](pipelines/ATACqPCR.yaml).  In order to output the sequence of optimal regions, you must also have 
downloaded the reference genome fasta file. Reference genomes can be downloaded in 2bit format using the following links:

hg19: [http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/hg19.2bit](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/hg19.2bit)

hg38: [http://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.2bit](http://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.2bit)

mm9: [http://hgdownload.cse.ucsc.edu/goldenPath/mm9/bigZips/mm9.2bit](http://hgdownload.cse.ucsc.edu/goldenPath/mm9/bigZips/mm9.2bit)

mm10: [http://hgdownload.cse.ucsc.edu/goldenPath/mm10/bigZips/mm10.2bit](http://hgdownload.cse.ucsc.edu/goldenPath/mm10/bigZips/mm10.2bit)

Reference genomes can be converted to fasta format using UCSC's twoBitToFa [(available here)](http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/twoBitToFa), 
which is also avilable as the ucsc-twobittofa package in bioconda.

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

## Getting Started

Below is an example for running APT to design primers for the MDM2 and DDIT3 promoters.  The input files are included in the [test_data](test_data/) 
directory and bam files have been pre-filtered for the regions of interest. The output generated in included in the [test_out](test_out/) directory.

Before starting, make sure pypiper and all dependencies have been installed, as well as the appropriate reference genomes if DNA sequence is required
in addition to coordinates.  

Modify [ATACqPCR.yaml](pipelines/ATACqPCR.yaml) to include paths of required dependencies if they are not the your `$PATH` variable.

Enter the ATACPrimerTool directory

```
cd ATACPrimerTool/
```

An example APT command with default arguments is available in [cmd.sh](cmd.sh).  You can either run this command directly using

```
./cmd.sh
```

or by running

```
python pipelines/ATACPrimerTool.py -P 3 -M 100 -O APT_practice -S BJ_qPCR -G hg19 -C ATACPrimerTool.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9 
```

## Designing normalization controls

APT can also design additional normalization controls for ATAC-qPCR based on a specific cell type of interest or for ATAC-qPCR in species
for which normalization controls have not been designed.  See the documentation at [How to Design Normalization Controls](How_to_design_normalization_controls.md)

## Terms of use and licensing information
