----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACPrimerTool.py -O test_out -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -seq -counts`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/APT_test/
*  Pipeline started at:   (10-05 09:35:53) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  11821d98aa153bc95f3c2e8d95edcc89d9ff5392
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-04 15:37:09 -0700
*        Pipeline diff:  43 files changed, 13 insertions(+), 2934 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `read_counts`:  `True`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/ENCODE_bams']`
*                `mem`:  `4000`
*        `sample_name`:  `APT_test`
*        `config_file`:  `ATACPrimerTool.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*    `genome_assembly`:  `hg38`
*    `percent_overlap`:  `0.9`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running

Target exists: `/storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes`
Bam file directory: test_data/ENCODE_bams
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg38	ATACPrimerTool	_RES_

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`

<pre>
</pre>
Process 24695 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.033GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

<pre>
</pre>
Process 24704 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/adipose_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test_read_counts.txt`

<pre>
</pre>
Process 24706 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam`

<pre>
</pre>
Process 24708 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/artery_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test_read_counts.txt`

<pre>
</pre>
Process 24710 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam`

<pre>
</pre>
Process 24712 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test_read_counts.txt`

<pre>
</pre>
Process 24714 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam`

<pre>
</pre>
Process 24716 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_3.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test_read_counts.txt`

<pre>
</pre>
Process 24718 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam`

<pre>
</pre>
Process 24720 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_4.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test_read_counts.txt`

<pre>
</pre>
Process 24722 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam`

<pre>
</pre>
Process 24724 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/colon_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test_read_counts.txt`

<pre>
</pre>
Process 24726 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam`

<pre>
</pre>
Process 24728 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/colon_2.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test_read_counts.txt`

<pre>
</pre>
Process 24730 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam`

<pre>
</pre>
Process 24732 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/esophagus_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test_read_counts.txt`

<pre>
</pre>
Process 24734 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam`

<pre>
</pre>
Process 24736 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/liver_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test_read_counts.txt`

<pre>
</pre>
Process 24738 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam`

<pre>
</pre>
Process 24740 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/nerve_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test_read_counts.txt`

<pre>
</pre>
Process 24742 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam`

<pre>
</pre>
Process 24744 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/ovary_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test_read_counts.txt`

<pre>
</pre>
Process 24746 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam`

<pre>
</pre>
Process 24748 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/prostate_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test_read_counts.txt`

<pre>
</pre>
Process 24750 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam`

<pre>
</pre>
Process 24752 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/spleen_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test_read_counts.txt`

<pre>
</pre>
Process 24754 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam`

<pre>
</pre>
Process 24756 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/stomach_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test_read_counts.txt`

<pre>
</pre>
Process 24758 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam`

<pre>
</pre>
Process 24760 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/testis_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test_read_counts.txt`

<pre>
</pre>
Process 24762 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam`

<pre>
</pre>
Process 24764 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24766 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24771 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24774 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24777 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24782 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24785 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24788 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24790 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24791 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24793 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24794 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24799 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24802 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24805 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24807 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24808 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24810 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed`

<pre>
</pre>
Process 24811 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24816 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24819 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24822 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24824 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24825 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24827 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed`

<pre>
</pre>
Process 24828 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24833 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24836 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24839 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24841 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24842 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24844 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24845 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24851 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24854 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24857 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24859 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24860 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24862 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed`

<pre>
</pre>
Process 24863 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24868 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24871 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24874 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24876 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24877 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24879 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24880 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24885 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24888 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24891 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24893 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24894 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24896 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24897 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24902 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24905 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24908 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24910 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24911 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24913 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24914 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24919 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24922 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24925 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24927 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24928 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24930 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24931 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24936 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24939 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24942 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24944 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24945 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24955 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24956 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24961 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24964 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24967 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24969 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24970 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24972 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24973 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24978 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24981 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 24984 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 24986 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 24987 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 24989 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed`

<pre>
</pre>
Process 24990 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 24995 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 24998 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 25001 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 25003 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 25004 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 25006 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed`

<pre>
</pre>
Process 25007 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 25012 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 25015 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 25018 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 25020 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 25021 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 25023 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `cat test_data/ENCODE_bams/adipose_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25024 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/artery_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25026 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/breast_epithelium_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25031 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/breast_epithelium_3.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25033 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/breast_epithelium_4.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25035 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/colon_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25037 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/colon_2.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25039 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/esophagus_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25041 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/liver_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25043 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/nerve_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25045 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/ovary_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25047 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/prostate_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25049 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/spleen_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25051 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/stomach_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25053 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/testis_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 25055 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 25057 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools getfasta -fi /storage/kdriest/ATACPrimerTool/genomes/hg38_chr.fa -bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed`

<pre>
</pre>
Process 25066 returned: (0). Elapsed: 0:00:00.

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`
> `Time`	0:00:49	ATACPrimerTool	_RES_
> `Success`	10-05-09:36:42	ATACPrimerTool	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:49
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (10-05 09:36:42) elapsed:0:00:48 _TIME_

Pypiper terminating spawned child process 24681
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACPrimerTool.py -O test_out -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -seq -counts`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/APT_test/
*  Pipeline started at:   (10-05 16:31:19) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  75d6f018cc071713e356eb364a536db5c2f399ab
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 16:28:32 -0700
*        Pipeline diff:  4 files changed, 75 insertions(+), 264 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `read_counts`:  `True`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/ENCODE_bams']`
*                `mem`:  `4000`
*        `bedpe_input`:  `False`
*        `sample_name`:  `APT_test`
*        `config_file`:  `ATACPrimerTool.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*    `genome_assembly`:  `hg38`
*    `percent_overlap`:  `0.9`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running

Target exists: `/storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes`
Bam file directory: test_data/ENCODE_bams
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg38	ATACPrimerTool	_RES_

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`

<pre>
</pre>
Process 52482 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.033GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 | sort -k1,1 -k2,2n - > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

<pre>
</pre>
Process 52492 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/adipose_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test_read_counts.txt`

<pre>
</pre>
Process 52495 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam`

<pre>
</pre>
Process 52497 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`

<pre>
</pre>
Process 52499 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/artery_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test_read_counts.txt`

<pre>
</pre>
Process 52504 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam`

<pre>
</pre>
Process 52506 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`

<pre>
</pre>
Process 52508 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test_read_counts.txt`

<pre>
</pre>
Process 52513 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam`

<pre>
</pre>
Process 52515 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`

<pre>
</pre>
Process 52517 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_3.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test_read_counts.txt`

<pre>
</pre>
Process 52522 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam`

<pre>
</pre>
Process 52524 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`

<pre>
</pre>
Process 52526 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_4.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test_read_counts.txt`

<pre>
</pre>
Process 52531 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam`

<pre>
</pre>
Process 52533 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`

<pre>
</pre>
Process 52535 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/colon_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test_read_counts.txt`

<pre>
</pre>
Process 52540 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam`

<pre>
</pre>
Process 52542 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`

<pre>
</pre>
Process 52544 returned: (0). Elapsed: 0:00:06.

Target exists: `test_data/ENCODE_bams/colon_2.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test_read_counts.txt`

<pre>
</pre>
Process 52549 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam`

<pre>
</pre>
Process 52551 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`

<pre>
</pre>
Process 52553 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/esophagus_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test_read_counts.txt`

<pre>
</pre>
Process 52558 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam`

<pre>
</pre>
Process 52560 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`

<pre>
</pre>
Process 52562 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/liver_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test_read_counts.txt`

<pre>
</pre>
Process 52569 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam`

<pre>
</pre>
Process 52571 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`

<pre>
</pre>
Process 52573 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/nerve_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test_read_counts.txt`

<pre>
</pre>
Process 52578 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam`

<pre>
</pre>
Process 52580 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`

<pre>
</pre>
Process 52582 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/ovary_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test_read_counts.txt`

<pre>
</pre>
Process 52587 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam`

<pre>
</pre>
Process 52589 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`

<pre>
</pre>
Process 52591 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/prostate_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test_read_counts.txt`

<pre>
</pre>
Process 52596 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam`

<pre>
</pre>
Process 52598 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`

<pre>
</pre>
Process 52600 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/spleen_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test_read_counts.txt`

<pre>
</pre>
Process 52605 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam`

<pre>
</pre>
Process 52607 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`

<pre>
</pre>
Process 52609 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/stomach_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test_read_counts.txt`

<pre>
</pre>
Process 52614 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam`

<pre>
</pre>
Process 52616 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`

<pre>
</pre>
Process 52618 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/testis_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test_read_counts.txt`

<pre>
</pre>
Process 52623 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam`

<pre>
</pre>
Process 52625 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`

<pre>
</pre>
Process 52627 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52632 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52635 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52638 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52641 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52644 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52646 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52647 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52649 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52650 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52653 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52656 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52658 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52659 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52661 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52662 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52666 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52669 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52671 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52672 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52674 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52675 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52686 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52689 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52691 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52692 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52694 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52695 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52698 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52701 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52703 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52704 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52706 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52707 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52710 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52713 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52715 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52716 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52718 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52719 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52722 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52725 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52727 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52728 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52730 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52731 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52734 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52737 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52739 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52740 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52742 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52743 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52746 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52749 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52751 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52752 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52754 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52755 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52758 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52761 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52763 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52764 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52766 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52767 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52770 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52773 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52775 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52776 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52778 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52779 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52782 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52785 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52787 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52788 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52790 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52791 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52794 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52797 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52799 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52800 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52802 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 52803 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 52806 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 52809 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 52811 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 52812 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 52814 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 52815 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools getfasta -fi /storage/kdriest/ATACPrimerTool/genomes/hg38_chr.fa -bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed`

<pre>
</pre>
Process 52824 returned: (0). Elapsed: 0:00:00.

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`
> `Time`	0:00:50	ATACPrimerTool	_RES_
> `Success`	10-05-16:32:09	ATACPrimerTool	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:50
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (10-05 16:32:09) elapsed:0:00:50 _TIME_

Pypiper terminating spawned child process 52468
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACPrimerTool.py -O test_out -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -seq -counts`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/APT_test/
*  Pipeline started at:   (10-05 17:09:57) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  812ae1fd8951559d881e2565163ae3187133e1a4
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 16:35:17 -0700
*        Pipeline diff:  7 files changed, 12 insertions(+), 369 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `read_counts`:  `True`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/ENCODE_bams']`
*                `mem`:  `4000`
*        `bedpe_input`:  `False`
*        `sample_name`:  `APT_test`
*        `config_file`:  `ATACPrimerTool.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*    `genome_assembly`:  `hg38`
*    `percent_overlap`:  `0.9`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running

Target exists: `/storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes`
Bam file directory: test_data/ENCODE_bams
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg38	ATACPrimerTool	_RES_

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`

<pre>
</pre>
Process 54494 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.033GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 | sort -k1,1 -k2,2n - > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

<pre>
</pre>
Process 54584 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/adipose_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`

<pre>
</pre>
Process 54587 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/artery_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`

<pre>
</pre>
Process 54592 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`

<pre>
</pre>
Process 54597 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_3.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`

<pre>
</pre>
Process 54602 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_4.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`

<pre>
</pre>
Process 54607 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/colon_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`

<pre>
</pre>
Process 54612 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/colon_2.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`

<pre>
</pre>
Process 54617 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/esophagus_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`

<pre>
</pre>
Process 54622 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/liver_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`

<pre>
</pre>
Process 54627 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/nerve_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`

<pre>
</pre>
Process 54632 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/ovary_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`

<pre>
</pre>
Process 54637 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/prostate_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`

<pre>
</pre>
Process 54642 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/spleen_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`

<pre>
</pre>
Process 54647 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/stomach_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`

<pre>
</pre>
Process 54652 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/testis_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`

<pre>
</pre>
Process 54657 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54662 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54665 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54668 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54671 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54674 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54676 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54677 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54679 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54680 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54683 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54686 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54688 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54689 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54691 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54692 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54695 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54698 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54700 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54701 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54703 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54704 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54707 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54710 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54712 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54713 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54715 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54716 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54719 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54722 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54724 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54725 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54727 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54728 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54731 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54734 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54736 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54737 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54739 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54740 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54743 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54746 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54748 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54749 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54751 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54752 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54755 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54758 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54760 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54761 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54763 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54764 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54767 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54770 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54772 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54773 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54775 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54776 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54779 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54782 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54784 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54785 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54787 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54788 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54791 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54794 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54796 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54797 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54799 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54800 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54803 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54806 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54808 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54809 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54811 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54812 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54815 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54818 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54820 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54821 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54823 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 54824 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 54827 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 54830 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 54832 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 54833 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 54835 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 54836 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools getfasta -fi /storage/kdriest/ATACPrimerTool/genomes/hg38_chr.fa -bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed`

<pre>
</pre>
Process 54845 returned: (0). Elapsed: 0:00:00.

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`
> `Time`	0:00:37	ATACPrimerTool	_RES_
> `Success`	10-05-17:10:34	ATACPrimerTool	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:37
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (10-05 17:10:34) elapsed:0:00:37 _TIME_

Pypiper terminating spawned child process 54480
