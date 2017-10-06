----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACPrimerTool.py -O test_out -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -counts`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/APT_test/
*  Pipeline started at:   (10-05 17:23:38) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  284ed6e2877d7658f2ccb34cf9d8920b23fdb6bc
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:18:08 -0700
*        Pipeline diff:  73 files changed, 6 insertions(+), 4194 deletions(-)

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
*         `return_seq`:  `False`
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
Process 56248 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.033GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 | sort -k1,1 -k2,2n - > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed`

<pre>
</pre>
Process 56259 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/adipose_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test_read_counts.txt`

<pre>
</pre>
Process 56262 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam`

<pre>
</pre>
Process 56264 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed`

<pre>
</pre>
Process 56266 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/artery_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test_read_counts.txt`

<pre>
</pre>
Process 56271 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam`

<pre>
</pre>
Process 56273 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed`

<pre>
</pre>
Process 56275 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test_read_counts.txt`

<pre>
</pre>
Process 56280 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam`

<pre>
</pre>
Process 56282 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed`

<pre>
</pre>
Process 56284 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_3.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test_read_counts.txt`

<pre>
</pre>
Process 56289 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam`

<pre>
</pre>
Process 56292 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed`

<pre>
</pre>
Process 56294 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/breast_epithelium_4.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test_read_counts.txt`

<pre>
</pre>
Process 56299 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam`

<pre>
</pre>
Process 56301 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed`

<pre>
</pre>
Process 56303 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/colon_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test_read_counts.txt`

<pre>
</pre>
Process 56308 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam`

<pre>
</pre>
Process 56310 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed`

<pre>
</pre>
Process 56312 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/colon_2.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test_read_counts.txt`

<pre>
</pre>
Process 56317 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam`

<pre>
</pre>
Process 56319 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed`

<pre>
</pre>
Process 56321 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/esophagus_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test_read_counts.txt`

<pre>
</pre>
Process 56326 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam`

<pre>
</pre>
Process 56329 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed`

<pre>
</pre>
Process 56340 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/liver_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test_read_counts.txt`

<pre>
</pre>
Process 56345 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam`

<pre>
</pre>
Process 56347 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed`

<pre>
</pre>
Process 56349 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/nerve_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test_read_counts.txt`

<pre>
</pre>
Process 56354 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam`

<pre>
</pre>
Process 56357 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed`

<pre>
</pre>
Process 56359 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/ovary_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test_read_counts.txt`

<pre>
</pre>
Process 56364 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam`

<pre>
</pre>
Process 56366 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed`

<pre>
</pre>
Process 56368 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/prostate_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test_read_counts.txt`

<pre>
</pre>
Process 56374 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam`

<pre>
</pre>
Process 56376 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed`

<pre>
</pre>
Process 56378 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/spleen_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test_read_counts.txt`

<pre>
</pre>
Process 56383 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam`

<pre>
</pre>
Process 56385 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed`

<pre>
</pre>
Process 56387 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/stomach_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test_read_counts.txt`

<pre>
</pre>
Process 56392 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam`

<pre>
</pre>
Process 56394 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed`

<pre>
</pre>
Process 56396 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/ENCODE_bams/testis_1.test.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test_read_counts.txt`
> `samtools view -c -F 1284 test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test_read_counts.txt`

<pre>
</pre>
Process 56401 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam`
> `samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam`

<pre>
</pre>
Process 56403 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed`

<pre>
</pre>
Process 56405 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56410 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56413 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56416 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56419 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56422 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56424 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56425 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56427 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56428 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56431 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56434 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56436 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56437 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56439 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56440 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56443 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56446 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56448 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56449 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56451 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56452 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56455 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56458 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56460 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56461 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56463 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56464 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56467 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56470 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56472 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56473 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56475 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56476 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56479 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56482 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56484 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56485 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56487 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56488 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56491 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56494 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56496 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56497 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56499 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56500 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56503 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56506 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56508 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56509 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56511 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56512 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56515 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56518 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56520 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56521 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56523 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56524 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56527 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56530 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56532 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56533 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56535 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56536 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56539 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56542 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56544 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56545 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56547 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56548 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56551 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56554 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56556 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56557 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56559 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56560 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56563 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56566 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56568 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56569 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56571 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed`

<pre>
</pre>
Process 56572 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed`

<pre>
</pre>
Process 56575 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed`

<pre>
</pre>
Process 56578 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

<pre>
</pre>
Process 56580 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)
> `paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed`

<pre>
</pre>
Process 56581 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`

<pre>
</pre>
Process 56583 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.033GB)

Targetless command, running...
> `cat test_data/ENCODE_bams/adipose_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56584 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/artery_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56586 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/breast_epithelium_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56588 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/breast_epithelium_3.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56590 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/breast_epithelium_4.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56592 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/colon_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56594 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/colon_2.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56596 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/esophagus_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56598 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/liver_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56600 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/nerve_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56602 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/ovary_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56604 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/prostate_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56606 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/spleen_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56608 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/stomach_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56610 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat test_data/ENCODE_bams/testis_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt`

<pre>
</pre>
Process 56613 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 56615 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.033GB)

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

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage
`rm /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage`
> `Time`	0:00:48	ATACPrimerTool	_RES_
> `Success`	10-05-17:24:27	ATACPrimerTool	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:48
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (10-05 17:24:27) elapsed:0:00:48 _TIME_

Pypiper terminating spawned child process 56234
