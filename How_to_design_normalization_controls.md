# How to design ATAC-qPCR normalization controls

## Overview

This document describes how to design normalization controls for ATAC-qPCR for either specific cell types
of interest or species for which ATAC-qPCR normalization controls have not been designed.  

## Additional Requirements

This tool uses the same dependencies as ATAC Primer Tool (see the [README](README.md)). In addition to the 
package dependencies required for ATAC Primer Tool (samtools, bedtools, and R), normalization peak design 
also requires DESeq2 (a bioconductor package in R), MACS2 and Homer.  

Make sure package depedencies are either in the `$PATH` variable or hardcoded in the 
[FindNormPeaks.yaml](pipelines/FindNormPeaks_config.yaml) file.  

## Running the pipeline

See example command in [FindNormPeaks.sh](FindNormPeaks.sh):

```
./FindNormPeaks.sh
```

## Input files

Identification of normalization peaks requires ATAC-seq bam files from the cell type or species of interest.  If available, narrowPeak files based on the given bam files can also be supplied. The following arguments are required:

`-I (--input-dir)`: path to directory containing input ATAC-seq bam files (and narrowpeak files if applicable). Bam files must be from paired-end sequencing and sorted by position.  

`-O (--ouput-parent)`: parent output directory of the project.

`-S (--sample-name)`: unique name for output subfolder and files.

`-G (--genome)`: identifier for genome assembly.

## Parameters

The following parameters can be modified:

`-return (--return_peaks)`: number of peaks to return. Default is 500.

`-rmdup (--duplicates_removed)`: whether duplicates have already been removed from bam file.  Default is false.

`-narrowpeak (--narrowpeak_input)`: use this setting if you are also supplying narrowpeak files.  These should be in the same directory as input bam files. Default is false.

`-C (--config)`: pipeline config file in YAML format.  Default is [FindNormPeaks.yaml](pipelines/FindNormPeaks_config.yaml).


**Note:** The following arguments are useful if restarting a failed or interrupted pipeline:

`-R (--recover)`: Recover mode, overwrite locks (output that has already been generated will not be overwritten).

`-N (--new-start)`: Fresh start mode, overwrite all.

## Getting Started

Below is an example for identifying normalization peaks based on publically available human ATAC-seq datasets from ENCODE.  The example input files have been pre-filtered to reduce file size and run time but the acccession information for the full files can be found in the ATAC Primer Tool manuscript as well as in the [test_data/NormPeaks](test_data/NormPeaks) directory. The annotated list of normalization peaks generated when file size files are used as input is also included in the [test_out/NormPeaks](test_out/NormPeaks) directory.  To identify normalization peaks:

Enter the ATACPrimerTool directory

```
cd ATACPrimerTool/
```

An example command with default arguments is available in [FindNormPeaks.sh](FindNormPeaks.sh). 

```
./FindNormPeaks.sh
```

or by running

```
python pipelines/FindNormPeaks.py -O APT_practice/ -S NormPeaks -G hg38 -C FindNormPeaks.yaml -I test_data/ENCODE_bams/ -return 500 -gs hs
```

The normalization peak pipeline output will be located in the `APT_practice/NormPeaks` directory.  Output files containing normalization peaks and their annotations will be in the `FindNormPeaks_ouput` directory.  Output generated includes `norm_peaks.bed`, a list of low variance peaks in bed format. Peak annotation information will also be provided in the `norm_peaks_annotated.txt` file.  For our uses, we select peaks at promotors of genes known to be ubiquitously expressed to increase the likelihood that the selected normalization peaks will work for samples beyond those used as input.  

**Note:** The output generated using the test data is not a list of valid normalization peaks due to filtering of input files.  See [norm_peaks_annotated.txt](test_out/NormPeaks/norm_peaks_annotated.txt) for a list of normalization peaks generated when run with full size input files.

Once suitable normalization peaks have been identified, ATAC-seq bam files and normalization peak coordinates can be used as input into ATAC Primer Tool to identify optimal primer locations, as described in the [README](README.md).