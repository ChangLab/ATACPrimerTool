# ATAC Primer Tool

Version: 1

Description: Predicts optimal regions for ATAC qPCR primers.

Date: 2017-08-04

Updated by : kdriest@stanford.edu

## Installing

APT uses [pypiper](https://github.com/epigen/pypiper) to run the pipeline. You can do a user-specific install like this:

```
pip install --user https://github.com/epigen/pypiper/zipball/master
```
## Configuring yaml files

Enter the ATACPrimerTool directory:

```
cd ATACPrimerTool/
```

And run the following command to configure yaml files with user-specific paths:
```
python pipelines/yaml_config.py path/to/ATACPrimerTool
```
where `path/to/ATACPrimerTool` is the path to the ATACPrimerTool directory.
 
## Package dependencies

This pipeline requires the following packages: R, samtools and bedtools (>= version 2.19.0). These packages must be either 
be in your `$PATH` or paths can be hardcoded by editing [ATACPrimerTool.yaml](pipelines/ATACPrimerTool_config.yaml). We recommend
using conda to manage packages if you do not have the required package dependencies.  Information on conda and the bioconda
channel where these packages are available is located at [https://bioconda.github.io/](https://bioconda.github.io/).  NOTE: If using conda, pypiper needs to be run in a python2 environment.

## Running the pipeline

See example command in [cmd.sh](cmd.sh) or run it with:

```
./cmd.sh
```


## Reference genomes

Chromosome sizes for the following reference genomes are available in the [genomes](genomes/) directory: hg19, hg38, mm9, mm10.  

If you would like to use another reference genome, download [fetchChromSizes](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjR1Oi9-sjVAhUQ7GMKHZ0CChsQFggoMAA&url=http%3A%2F%2Fhgdownload.cse.ucsc.edu%2Fadmin%2Fexe%2Flinux.x86_64%2FfetchChromSizes&usg=AFQjCNFl70SKF51EO0cC9FBsVAIZpLc0kg) and add the path to 
[ATACPrimerTool.yaml](pipelines/ATACPrimerTool_config.yaml).  fetchChromSizes is also available in bioconda as ucsc-fetchchromsizes.

In order to output the DNA sequence of optimal primer regions, the reference genome fasta file must also be available in the genomes directory referenced by [ATACPrimerTool.yaml](pipelines/ATACPrimerTool_config.yaml).  

## Input files

APT requires ATAC-seq bam files to design optimal ATAC-qPCR primers.  Bam files can be downloaded from public repositories such as ENCODE or GEO or user-generated to match your cell type of interest.  A list of ATAC-seq datasets from a variety of both human and mouse tissue available from ENCODE is supplied in the APT manuscript.  APT requires the following inputs:

`-I (--input)`: path to directory containing input ATAC-seq bam files. Bam files must be from paired-end sequencing and sorted by position.  

`-I2 (--input2)`: bed file containing coordinates of peaks for which primers should be designed.  Coordinates should match the reference genome to which the bam files were mapped.

## APT Parameters

There are multiple parameters of APT that you can modify to fit your needs, although the default parameters are a good place to start. After running APT on a set of peaks, you can quickly rerun with different parameters using the same output directory and sample name. Output files will not be overwritten.   

The following parameters can be modified:

`-window (--window_size)`: window size in basepairs into which peaks are binned. Default is 100.

`-overlap (--percent_overlap)`: percentage by which spanning fragments should overlap window to be counted. Default is 0.9.

`-cov (--coverage)`: cutoff for average spanning fragment coverage.  Default is 3 (or ~500 copies/1ng input library).

`-cor (--correlation)`: cutoff for correlation between number of spanning fragments in window and total peak height across samples.  Default is 0.8.

`-seq (--return_seq)`: used if DNA sequence of optimal primer regions should be returned. Requires reference genome fasta in genomes directory.  Default is false. 

`-counts (--read_counts)`: used if read counts for orginial bam files have already been determined and are present in bam file folder.  Useful if input bam files have been filtered, as in test data set.  See [test_data/ENCODE_bams](test_data/ENCODE_bams) for examples.  Default is false.

`-bedpe (--bedpe_input)`: used if input files are in bedpe (paired end bed) format rather than bam format.  This is faster than starting from bam files and is useful if you would like to design primers for multiple peak sets.  Bedpe files can be produced by sorting bam files by read name and using `bedtools bamtobed` with the `-bedpe` option.  Input bedpe files should be sorted by position.


Modification of the correlation and coverage parameters can be useful to narrow down the most optimal primer regions if large regions are returned or to relax the stringency if no regions are found for some peaks. For peaks with low accessibility, decreasing the coverage cutoff and increasing the amount of input DNA into the qPCR reaction can help, although peaks with low accessibility tend to give less accurate results with ATAC-qPCR.

## Getting Started

Below is an example for running APT to design primers for the MDM2 and DDIT3 promoters.  The input files are included in the [test_data](test_data/) 
directory and bam files have been pre-filtered for the regions of interest. The output generated in included in the [test_out/APT_test](test_out/APT_test) directory.

Before starting, make sure pypiper and all dependencies have been installed, and that the appropriate reference genomes have been downloaded if DNA sequence is required in addition to coordinates.  

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
python pipelines/ATACPrimerTool.py -O APT_practice -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -counts
```

Results will be in the located in the `APT_practice/APT_test` directory.

## Designing normalization controls

APT can also design additional normalization controls for ATAC-qPCR based on a specific cell type of interest or for ATAC-qPCR in species
for which normalization controls have not been designed.  For usage see [How to Design Normalization Controls](How_to_design_normalization_controls.md)

## Terms of use and licensing information
