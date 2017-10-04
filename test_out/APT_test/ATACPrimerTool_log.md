----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACPrimerTool.py -O test_out -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -seq`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/APT_test/
*  Pipeline started at:   (10-04 15:06:18) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  8c4005d63a2f0d465d9c7817b6845c4f7adef80f
*      Pipeline branch:  * master
*        Pipeline date:  2017-09-28 16:55:08 -0700
*        Pipeline diff:  74 files changed, 62 insertions(+), 18744 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
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
Process 26551 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.033GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

<pre>
</pre>
Process 26561 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/adipose_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/adipose_1.test.bam`

<pre>
</pre>
Process 26563 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test_read_counts.txt`

<pre>
</pre>
Process 26564 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam`

<pre>
</pre>
Process 26566 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/artery_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/artery_1.test.bam`

<pre>
</pre>
Process 26568 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test_read_counts.txt`

<pre>
</pre>
Process 26569 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam`

<pre>
</pre>
Process 26571 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/breast_epithelium_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/breast_epithelium_1.test.bam`

<pre>
</pre>
Process 26573 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test_read_counts.txt`

<pre>
</pre>
Process 26574 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam`

<pre>
</pre>
Process 26576 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/breast_epithelium_3.test.bam.bai`
> `samtools index test_data/ENCODE_bams/breast_epithelium_3.test.bam`

<pre>
</pre>
Process 26578 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test_read_counts.txt`

<pre>
</pre>
Process 26579 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam`

<pre>
</pre>
Process 26581 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/breast_epithelium_4.test.bam.bai`
> `samtools index test_data/ENCODE_bams/breast_epithelium_4.test.bam`

<pre>
</pre>
Process 26583 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test_read_counts.txt`

<pre>
</pre>
Process 26584 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam`

<pre>
</pre>
Process 26586 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/colon_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/colon_1.test.bam`

<pre>
</pre>
Process 26588 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test_read_counts.txt`

<pre>
</pre>
Process 26589 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam`

<pre>
</pre>
Process 26591 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/colon_2.test.bam.bai`
> `samtools index test_data/ENCODE_bams/colon_2.test.bam`

<pre>
</pre>
Process 26593 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test_read_counts.txt`

<pre>
</pre>
Process 26594 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam`

<pre>
</pre>
Process 26596 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/esophagus_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/esophagus_1.test.bam`

<pre>
</pre>
Process 26598 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test_read_counts.txt`

<pre>
</pre>
Process 26599 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam`

<pre>
</pre>
Process 26601 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/liver_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/liver_1.test.bam`

<pre>
</pre>
Process 26603 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test_read_counts.txt`

<pre>
</pre>
Process 26604 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam`

<pre>
</pre>
Process 26606 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/nerve_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/nerve_1.test.bam`

<pre>
</pre>
Process 26608 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test_read_counts.txt`

<pre>
</pre>
Process 26609 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam`

<pre>
</pre>
Process 26611 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/ovary_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/ovary_1.test.bam`

<pre>
</pre>
Process 26613 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test_read_counts.txt`

<pre>
</pre>
Process 26614 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam`

<pre>
</pre>
Process 26616 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/prostate_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/prostate_1.test.bam`

<pre>
</pre>
Process 26618 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test_read_counts.txt`

<pre>
</pre>
Process 26619 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam`

<pre>
</pre>
Process 26621 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/spleen_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/spleen_1.test.bam`

<pre>
</pre>
Process 26623 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test_read_counts.txt`

<pre>
</pre>
Process 26632 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam`

<pre>
</pre>
Process 26634 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/stomach_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/stomach_1.test.bam`

<pre>
</pre>
Process 26636 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test_read_counts.txt`

<pre>
</pre>
Process 26637 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam`

<pre>
</pre>
Process 26639 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/ENCODE_bams/testis_1.test.bam.bai`
> `samtools index test_data/ENCODE_bams/testis_1.test.bam`

<pre>
</pre>
Process 26641 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test_read_counts.txt`

<pre>
</pre>
Process 26642 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam`

<pre>
</pre>
Process 26644 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26646 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26651 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26654 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26657 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26662 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26665 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26668 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26670 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26671 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26673 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26674 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26679 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26682 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26685 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26687 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26688 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26690 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed`

<pre>
</pre>
Process 26691 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26696 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26699 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26702 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26704 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26705 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26707 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed`

<pre>
</pre>
Process 26708 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26713 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26716 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26719 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26721 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26722 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26724 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26725 returned: (0). Elapsed: 0:00:06.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26731 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26734 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26737 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26739 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26740 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26742 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed`

<pre>
</pre>
Process 26743 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26748 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26751 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26754 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26756 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26757 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26759 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26760 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26765 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26768 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26771 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26773 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26774 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26776 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26777 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26782 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26785 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26788 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26790 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26791 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26793 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26794 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26799 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26802 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26805 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26807 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26808 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26810 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26811 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26816 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26819 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26822 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26824 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26825 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26827 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26828 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26833 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26836 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26839 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26841 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26842 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26844 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26845 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26850 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26853 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26856 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26858 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26859 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26861 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26862 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26867 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26870 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26873 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26875 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26876 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26878 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed`

<pre>
</pre>
Process 26879 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 26884 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 26887 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 26890 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 26892 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 26893 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 26895 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26896 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26898 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26900 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26902 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26904 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26906 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26908 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26910 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26912 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26914 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26916 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26918 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26920 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26922 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 26924 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 26926 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools getfasta -fi /storage/kdriest/ATACPrimerTool/genomes/hg38_chr.fa -bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed`

<pre>
</pre>
Process 26936 returned: (0). Elapsed: 0:00:00.

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
> `Time`	0:00:58	ATACPrimerTool	_RES_
> `Success`	10-04-15:07:15	ATACPrimerTool	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:58
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (10-04 15:07:15) elapsed:0:00:58 _TIME_

Pypiper terminating spawned child process 26537
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACPrimerTool.py -O test_out -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -seq`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/APT_test/
*  Pipeline started at:   (10-04 15:08:51) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  8c4005d63a2f0d465d9c7817b6845c4f7adef80f
*      Pipeline branch:  * master
*        Pipeline date:  2017-09-28 16:55:08 -0700
*        Pipeline diff:  74 files changed, 62 insertions(+), 18744 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
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
Process 27007 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.033GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

<pre>
</pre>
Process 27018 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/adipose_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/artery_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/breast_epithelium_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/breast_epithelium_3.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam`

Target exists: `test_data/ENCODE_bams/breast_epithelium_4.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam`

Target exists: `test_data/ENCODE_bams/colon_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/colon_2.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam`

Target exists: `test_data/ENCODE_bams/esophagus_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/liver_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/nerve_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/ovary_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/prostate_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/spleen_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/stomach_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam`

Target exists: `test_data/ENCODE_bams/testis_1.test.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test_read_counts.txt`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27026 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27031 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27034 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27037 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27044 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27047 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27053 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27058 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27061 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27066 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27068 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27073 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27076 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27079 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27081 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27082 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27084 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed`

<pre>
</pre>
Process 27085 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27090 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27093 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27096 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27098 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27103 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27119 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed`

<pre>
</pre>
Process 27150 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27163 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27166 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27169 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27171 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27172 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27174 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27175 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27180 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27184 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27192 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27224 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27240 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27242 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed`

<pre>
</pre>
Process 27243 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27248 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27251 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27254 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27256 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27257 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27259 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27260 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27265 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27268 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27271 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27273 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27274 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27276 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27277 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27282 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27286 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27289 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27291 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27292 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27294 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27295 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27300 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27303 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27306 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27308 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27309 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27311 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27312 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27317 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27320 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27323 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27325 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27326 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27328 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27329 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27334 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27337 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27340 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27342 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27343 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27345 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27346 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27351 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27354 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27357 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27359 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27360 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27362 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27363 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27368 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27371 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27374 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27376 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27377 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27379 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed`

<pre>
</pre>
Process 27380 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 27385 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 27388 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 27391 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 27393 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 27394 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 27396 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 27397 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools getfasta -fi /storage/kdriest/ATACPrimerTool/genomes/hg38_chr.fa -bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed`

<pre>
</pre>
Process 27406 returned: (0). Elapsed: 0:00:00.

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
> `Time`	0:00:37	ATACPrimerTool	_RES_
> `Success`	10-04-15:09:28	ATACPrimerTool	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:37
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (10-04 15:09:28) elapsed:0:00:37 _TIME_

Pypiper terminating spawned child process 26993
