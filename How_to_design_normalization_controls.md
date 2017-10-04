# How to design ATAC-qPCR normalization controls

## Overview

This document describes how to design normalization controls for ATAC-qPCR for either specific cell types
of interest or species for which ATAC-qPCR normalization controls have not been designed.  

## Additional Requirements

This tool uses the same dependencies as ATAC Primer Tool (see the [README](README.md)). In addition to the 
package dependencies required for ATAC Primer Tool (samtools, bedtools, and R), normalization peak design 
also requires MACS2, Picard and Homer.  

Make sure package depedencies are either in the `$PATH` variable or hardcoded in the 
[norm_peaks.yaml](pipelines/norm_peaks.yaml) file.  

## Running the pipeline

See example command in [norm_peaks.sh](norm_peaks.sh):

```
./norm_peaks.sh
```

## Input files

Identification of normalization peaks requires ATAC-seq bam files from the cell type or species of interest.  ATAC-seq peak files in narrowPeak format can also
be used directly, although bam files are required for primer design.

Bam files should be obtained from paired-end sequencing and sorted by position.  

## Parameters

The following parameters can be modified:

`-return (--return_peaks)`: number of peaks to return. Default is 500.

`-rmdup (--duplicates_removed)`: whether duplicates have already been removed from bam file.  Default is false.

`-narrowpeak (--narrowpeak_input)`: use this setting if you are starting from narrowpeak files rather than bam files.  Default is false.

## Getting Started

Below is an example for identifying normalization peaks based on publically available human ATAC-seq datasets from ENCODE.  The input files are listed in the 
ATAC Primer Tool manuscript as well as in the [test_data/norm_peaks](test_data/norm_peaks) directory. The annotated list of normalization peaks generated is included in the [test_out/norm_peaks](test_out/norm_peaks) directory.  Intermediate files generated are not included due to file size, but will also be produced by the pipeline.  To identify normalization peaks:

Enter the ATACPrimerTool directory

```
cd ATACPrimerTool/
```

An example command with default arguments is available in [norm_peaks.sh](norm_peaks.sh).  You can run this command directly once bam files have been downloaded from ENCODE using

```
./norm_peaks.sh
```

or by running

```
python pipelines/norm_peaks.py -P 3 -M 100 -O test_out/ -S BJ_norm -G hg19 -C norm_peaks.yaml -I ~/BJ_analysis -return 500 -gs hs -rmdup true
```

The normalization peak pipeline will produce a list of low variance peaks as well as their annotations.  For our uses, we select peaks at promotors of genes known to be ubiquitously expressed to increase the likelihood that the selected normalization peaks will work for samples beyond those used as input.  

Once suitable normalization peaks have been identified, ATAC-seq bam files and normalization peak coordinates can be used as input into ATAC Primer Tool to identify optimal primer locations, as described in the [README](README.md).