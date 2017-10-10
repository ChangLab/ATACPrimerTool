----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/FindNormPeaks.py -O test_out/ -S NormPeaks_test -G hg38 -C FindNormPeaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/
*  Pipeline started at:   (10-09 18:11:58) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  76af0ca98d428b64d0f66d2a5fadc8eeb2176f05
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-09 17:44:11 -0700
*        Pipeline diff:  2 files changed, 2 insertions(+), 2 deletions(-)

##### [Arguments passed to pipeline:]
*            `returnN`:  `500`
*              `rmdup`:  `False`
*        `config_file`:  `FindNormPeaks.yaml`
*              `input`:  `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/`
*        `sample_name`:  `NormPeaks_test`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*              `fresh`:  `False`
*            `recover`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/
> `Genome`	hg38	FindNormPeaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam`
> `samtools rmdup /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam`

<pre>
[bam_rmdup_core] processing reference chr1...
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/FindNormPeaks.py -O test_out/ -S NormPeaks_test -G hg38 -C FindNormPeaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/
*  Pipeline started at:   (10-09 18:22:00) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  76af0ca98d428b64d0f66d2a5fadc8eeb2176f05
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-09 17:44:11 -0700
*        Pipeline diff:  2 files changed, 2 insertions(+), 2 deletions(-)

##### [Arguments passed to pipeline:]
*            `returnN`:  `500`
*              `rmdup`:  `False`
*        `config_file`:  `FindNormPeaks.yaml`
*              `input`:  `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/`
*        `sample_name`:  `NormPeaks_test`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*              `fresh`:  `False`
*            `recover`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/
> `Genome`	hg38	FindNormPeaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/FindNormPeaks.py -O test_out/ -S NormPeaks_test -G hg38 -C FindNormPeaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs -R`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/
*  Pipeline started at:   (10-09 18:26:25) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.13
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  76af0ca98d428b64d0f66d2a5fadc8eeb2176f05
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-09 17:44:11 -0700
*        Pipeline diff:  2 files changed, 2 insertions(+), 2 deletions(-)

##### [Arguments passed to pipeline:]
*            `returnN`:  `500`
*              `rmdup`:  `False`
*        `config_file`:  `FindNormPeaks.yaml`
*              `input`:  `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/`
*        `sample_name`:  `NormPeaks_test`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*              `fresh`:  `False`
*            `recover`:  `True`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/
> `Genome`	hg38	FindNormPeaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam.bai`
Found lock file; overwriting this target...

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 20328 returned: (0). Elapsed: 0:18:34.

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 21217 returned: (0). Elapsed: 0:08:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 21601 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 21603 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 21604 returned: (0). Elapsed: 0:16:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 22546 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 22548 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 22549 returned: (0). Elapsed: 0:15:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 23112 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 23114 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 23115 returned: (0). Elapsed: 0:15:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 23452 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 23455 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 23456 returned: (0). Elapsed: 0:13:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 23653 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 23655 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 23656 returned: (0). Elapsed: 0:17:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 24169 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 24171 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 24172 returned: (0). Elapsed: 0:06:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 24239 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 24241 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 24242 returned: (0). Elapsed: 0:11:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 24504 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 24506 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 24507 returned: (0). Elapsed: 0:11:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 24811 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 24813 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 24814 returned: (0). Elapsed: 0:12:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 25635 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 25637 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 25638 returned: (0). Elapsed: 0:05:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 25789 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 25791 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 25792 returned: (0). Elapsed: 0:17:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 27197 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 27199 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 27200 returned: (0). Elapsed: 0:18:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 27838 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 27840 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

<pre>
</pre>
Process 27841 returned: (0). Elapsed: 0:10:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed`

<pre>
</pre>
Process 28538 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed`

<pre>
</pre>
Process 28540 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts.bed`
> `mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts.bed`

<pre>
</pre>
Process 28541 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks.bed`
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks.bed`

<pre>
Loading required package: DESeq2
Loading required package: S4Vectors
Loading required package: methods
Loading required package: stats4
Loading required package: BiocGenerics
Loading required package: parallel

Attaching package: ‘BiocGenerics’

The following objects are masked from ‘package:parallel’:

    clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
    clusterExport, clusterMap, parApply, parCapply, parLapply,
    parLapplyLB, parRapply, parSapply, parSapplyLB

The following objects are masked from ‘package:stats’:

    IQR, mad, sd, var, xtabs

The following objects are masked from ‘package:base’:

    anyDuplicated, append, as.data.frame, cbind, colMeans, colnames,
    colSums, do.call, duplicated, eval, evalq, Filter, Find, get, grep,
    grepl, intersect, is.unsorted, lapply, lengths, Map, mapply, match,
    mget, order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
    rbind, Reduce, rowMeans, rownames, rowSums, sapply, setdiff, sort,
    table, tapply, union, unique, unsplit, which, which.max, which.min


Attaching package: ‘S4Vectors’

The following object is masked from ‘package:base’:

    expand.grid

Loading required package: IRanges
Loading required package: GenomicRanges
Loading required package: GenomeInfoDb
Loading required package: SummarizedExperiment
Loading required package: Biobase
Welcome to Bioconductor

    Vignettes contain introductory material; view with
    'browseVignettes()'. To cite Bioconductor, see
    'citation("Biobase")', and for packages 'citation("pkgname")'.

Warning messages:
1: replacing previous import ‘stats::sd’ by ‘BiocGenerics::sd’ when loading ‘S4Vectors’ 
2: replacing previous import ‘stats::var’ by ‘BiocGenerics::var’ when loading ‘S4Vectors’ 
3: replacing previous import ‘stats::sd’ by ‘BiocGenerics::sd’ when loading ‘IRanges’ 
4: replacing previous import ‘stats::var’ by ‘BiocGenerics::var’ when loading ‘IRanges’ 
</pre>
Process 28542 returned: (0). Elapsed: 0:00:51. Peak memory: (Process: 0.472GB; Pipeline: 0.001GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks_annotated.txt`
> `annotatePeaks.pl /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks.bed hg38 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks_annotated.txt`

<pre>

	Peak file = /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks.bed
	Genome = hg38
	Organism = human
	Peak/BED file conversion summary:
		BED/Header formatted lines: 500
		peakfile formatted lines: 0
		Duplicated Peak IDs: 0

	Peak File Statistics:
		Total Peaks: 500
		Redundant Peak IDs: 0
		Peaks lacking information: 0 (need at least 5 columns per peak)
		Peaks with misformatted coordinates: 0 (should be integer)
		Peaks with misformatted strand: 0 (should be either +/- or 0/1)

	Peak file looks good!

	Reading Positions...
	-----------------------
	Finding Closest TSS...
	Annotating:........................
		Annotation	Number of peaks	Total size (bp)	Log2 Enrichment
		3UTR	3.0	22600733	-0.314
		miRNA	0.0	84186	-8.966
		ncRNA	5.0	6143505	2.302
		TTS	8.0	30226128	0.681
		pseudo	1.0	1909024	1.666
		Exon	59.0	35523244	3.331
		Intron	136.0	1223137819	-0.570
		Intergenic	151.0	1673051648	-0.871
		Promoter	106.0	33836146	4.246
		5UTR	31.0	2674233	6.134
		snoRNA	0.0	331	-8.966
		rRNA	0.0	16815	-8.966
	NOTE: If this part takes more than 2 minutes, there is a good chance
		your machine ran out of memory: consider hitting ctrl+C and rerunning
		the command with "-noann"
	To capture annotation stats in a file, use "-annStats <filename>" next time
	Annotating:........................
		Annotation	Number of peaks	Total size (bp)	Log2 Enrichment
		3UTR	3.0	22600733	-0.314
		Retroposon	0.0	4066510	-8.966
		RC?	0.0	59630	-8.966
		RNA	0.0	107989	-8.966
		miRNA	0.0	84186	-8.966
		ncRNA	5.0	6143505	2.302
		TTS	8.0	30226128	0.682
		LINE	17.0	627933746	-2.607
		srpRNA	0.0	262618	-8.966
		SINE	1.0	378565121	-5.965
		RC	0.0	359758	-8.966
		tRNA	0.0	91577	-8.966
		DNA?	0.0	422969	-8.966
		pseudo	1.0	1909024	1.667
		DNA	7.0	99258856	-1.226
		Exon	59.0	35523244	3.332
		Intron	73.0	640198252	-0.533
		Intergenic	86.0	762643651	-0.549
		Promoter	106.0	33836146	4.247
		5UTR	31.0	2674233	6.135
		snoRNA	0.0	331	-8.966
		LTR?	0.0	1140836	-8.966
		scRNA	0.0	122004	-8.966
		CpG-Island	95.0	9293894	5.953
		Low_complexity	0.0	5415534	-8.966
		LTR	6.0	258359250	-2.829
		Simple_repeat	2.0	33925084	-1.485
		snRNA	0.0	314624	-8.966
		Unknown	0.0	716086	-8.966
		SINE?	0.0	2674	-8.966
		Satellite	0.0	74200559	-8.966
		rRNA	0.0	195038	-8.966
	Counting Tags in Peaks from each directory...
	Organism: human
	Loading Gene Informaiton...
	Outputing Annotation File...
	Done annotating peaks file

</pre>
Process 28566 returned: (0). Elapsed: 0:00:51.

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed
> `Time`	3:22:16	FindNormPeaks	_RES_
> `Success`	10-09-21:48:41	FindNormPeaks	_RES_

##### [Epilogue:]
*   Total elapsed time:  3:22:16
*     Peak memory used:  0.47 GB
* Pipeline completed at:  (10-09 21:48:41) elapsed:3:22:16 _TIME_

Pypiper terminating spawned child process 20314
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/FindNormPeaks.py -O test_out/ -S NormPeaks_test -G hg38 -C FindNormPeaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs -R`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/
*  Pipeline started at:   (10-10 09:24:52) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.13
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  76af0ca98d428b64d0f66d2a5fadc8eeb2176f05
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-09 17:44:11 -0700
*        Pipeline diff:  2 files changed, 2 insertions(+), 2 deletions(-)

##### [Arguments passed to pipeline:]
*            `returnN`:  `500`
*              `rmdup`:  `False`
*        `config_file`:  `FindNormPeaks.yaml`
*              `input`:  `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/`
*        `sample_name`:  `NormPeaks_test`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*              `fresh`:  `False`
*            `recover`:  `True`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/
> `Genome`	hg38	FindNormPeaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks_annotated.txt`

Change status from running to completed
> `Time`	0:00:00	FindNormPeaks	_RES_
> `Success`	10-10-09:24:52	FindNormPeaks	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:00
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (10-10 09:24:52) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 2416
