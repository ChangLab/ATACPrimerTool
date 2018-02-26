# ATAC Primer Tool

Version: 1.0

Description: Predicts optimal regions for ATAC qPCR primers.

Date: 2017-08-04

Updated by : kyost@stanford.edu

## Galaxy Tool

For information on how to run ATAC Primer Tool (APT) from the Galaxy Toolshed, please see 
[Running APT with Galaxy](Running_APT_with_Galaxy.md). To run APT from command line, continue reading.

## Installing

APT uses [pypiper](https://github.com/epigen/pypiper) to run the pipeline, which can be installed using the following command:

```
pip install --user https://github.com/epigen/pypiper/zipball/master
```

Clone the APT repository by running the following command:

```
git clone https://github.com/ChangLab/ATACPrimerTool.git
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

This pipeline requires the following packages: R, samtools and bedtools (>= version 2.24.0). These packages must be either 
be in your `$PATH` variable or paths can be hardcoded by editing [ATACPrimerTool.yaml](pipelines/ATACPrimerTool_config.yaml). 

## Running the pipeline

See example command in [cmd.sh](cmd.sh) or run it with:

```
./cmd.sh
```


## Reference genomes

Chromosome sizes for the following reference genomes are available in the [genomes](genomes/) directory: hg19, hg38, mm9, mm10.  

If you would like to use another reference genome, download [fetchChromSizes](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjR1Oi9-sjVAhUQ7GMKHZ0CChsQFggoMAA&url=http%3A%2F%2Fhgdownload.cse.ucsc.edu%2Fadmin%2Fexe%2Flinux.x86_64%2FfetchChromSizes&usg=AFQjCNFl70SKF51EO0cC9FBsVAIZpLc0kg) and add the path to 
[ATACPrimerTool.yaml](pipelines/ATACPrimerTool_config.yaml).  fetchChromSizes is also available in bioconda as ucsc-fetchchromsizes.

In order to output the DNA sequence of optimal primer regions, the reference genome fasta file must also be downloaded and the path passed as an argument.  

## Input arguments

APT requires ATAC-seq bam files to design optimal ATAC-qPCR primers.  Bam files can be downloaded from public repositories such as ENCODE or GEO or user-generated to match your cell type of interest.  A list of ATAC-seq datasets from a variety of both human and mouse tissue available from ENCODE is supplied in the APT manuscript.  APT requires the following inputs:

`-I (--input-dir)`: path to directory containing input ATAC-seq bam files. Bam files must be from paired-end sequencing and sorted by position.  

`-B (--input-peaks)`: bed file containing coordinates of peaks for which primers should be designed.  Coordinates should match the reference genome to which the bam files were mapped.

`-O (--ouput-parent)`: parent output directory of the project.

`-S (--sample-name)`: unique name for output subfolder and files.

`-G (--genome)`: identifier for genome assembly.

## APT Parameters

There are multiple parameters of APT that can be modified, although the default parameters are a good place to start. After running APT on 
a set of peaks, you can quickly rerun with different parameters using the same output directory and sample name. Output files will not be 
overwritten. In practice, we typically try a couple of different correlation cutoffs (i.e. 0.7, 0.8 and 0.9) to narrow down primer design 
regions if large regions are output using the defaults or to extend primer design regions if primers cannot be designed in the original region.   

The following parameters can be modified:

`-window (--window_size)`: window size in basepairs into which peaks are binned. Default is 100.

`-overlap (--percent_overlap)`: percentage by which spanning fragments should overlap window to be counted. Default is 0.9.

`-cov (--coverage)`: cutoff for average spanning fragment coverage.  Default is 3 (or ~500 copies/1ng input library).

`-cor (--correlation)`: cutoff for correlation between number of spanning fragments in window and total peak height across samples.  Default is 0.8.

`-fasta (--genome_fasta)`: location of reference genome fasta file if DNA sequence of optimal primer regions should be returned.  Default is false. 

`-counts (--read_counts)`: used if read counts for original bam files have already been determined and are present in bam file folder.  Useful if input bam files have been filtered, as in test data set.  See [test_data/ENCODE_bams](test_data/ENCODE_bams) for examples.  Default is false.

`-bedpe (--bedpe_input)`: used if input files are in bedpe (paired end bed) format rather than bam format.  This is faster than starting from bam files and is useful if you would like to design primers for multiple peak sets.  Bedpe files can be produced by sorting bam files by read name and using `bedtools bamtobed` with the `-bedpe` option.  Input bedpe files should be sorted by position.

`-C (--config)`: pipeline config file in YAML format.  Default is [ATACPrimerTool.yaml](pipelines/ATACPrimerTool_config.yaml).


Modification of the correlation and coverage parameters can be useful to narrow down the most optimal primer regions if large regions are returned or to relax the stringency if no regions are found for some peaks. For peaks with low accessibility, decreasing the coverage cutoff and increasing the amount of input DNA into the qPCR reaction can help, although peaks with low accessibility tend to give less accurate results with ATAC-qPCR.


**Note:** The following arguments are useful if restarting a failed or interrupted pipeline:

`-R (--recover)`: Recover mode, overwrite locks (output that has already been generated will not be overwritten).

`-N (--new-start)`: Fresh start mode, overwrite all.


## Getting Started

Below is an example for running APT to design primers for the MDM2 and DDIT3 promoters.  The input files are included in the [test_data](test_data/) 
directory and bam files have been pre-filtered for the regions of interest. The output generated in included in the [test_out/APT_test](test_out/APT_test) directory.

Before starting, make sure pypiper and all dependencies have been installed, and that the appropriate reference genomes have been downloaded if DNA sequence is required in addition to coordinates.  

Modify [ATACPrimerTool.yaml](pipelines/ATACPrimerTool_config.yaml) to include paths of required dependencies if they are not the your `$PATH` variable.

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
python pipelines/ATACPrimerTool.py -O APT_practice -S APT_test -G hg38 -I test_data/ENCODE_bams -B test_data/test_peaks.bed -counts
```

Pipeline output will be in the located in the `APT_practice/APT_test` directory.  Coordinates of optimal ATAC-qPCR regions are saved in bed file format in the `APT_output` folder. Output files are named with the prefix of the input bed file name, followed by `_qPCR_regions_corrX.X_covX.bed`, where `X.X` and `X` are the correlation and coverage parameters.  Each line of the output file has the chromosome, start and stop coordinates, followed by the region name (`PeakName_regionX`) in tab-delimited format for each ATAC-qPCR region identified.  If a reference genome fasta file was supplied, the DNA sequence of the region will be available in the `_qPCR_regions_corrX.X_covX_seq.bed` file, otherwise it can be obtained from the coordinates using a genome browser such as UCSC.  The DNA sequence of the output regions should be used to design qPCR primers using available tools such as Primer3.  Additional information on primer design parameters is available in the ATAC Primer Tool manuscript.  

## Designing normalization controls

APT can also design additional normalization controls for ATAC-qPCR based on a specific cell type of interest or for ATAC-qPCR in species
for which normalization controls have not been designed.  For usage see [How to Design Normalization Controls](How_to_design_normalization_controls.md)
