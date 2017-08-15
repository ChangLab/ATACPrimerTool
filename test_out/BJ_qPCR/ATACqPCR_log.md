----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-07 18:07:58) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  7bbe27c418689ddeb307b3314b2841684b6e5d70
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 17:57:05 -0700

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `/usr/local/bin/Rscript /storage/kdriest/ATACqPCR/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 28971 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `/storage/kdriest/bedtools2/bin/bedtools slop  -i test_data/test_peaks.bed -g /seq/genomes/hg19/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 28982 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 28984 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 28985 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 28987 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 28989 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 28990 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 28992 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 28994 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 28995 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 28997 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 28999 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29000 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29002 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29004 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29005 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29007 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29009 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29010 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29012 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29014 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29015 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29017 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29019 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29020 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29022 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29024 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29025 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29027 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29029 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29030 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29032 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29034 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29043 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29045 returned: (0). Elapsed: 0:00:00.

Target to produce: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`
> `/usr/local/bin/samtools index test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam`

<pre>
</pre>
Process 29047 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `/usr/local/bin/samtools view -c -F 1284 test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 29048 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `/usr/local/bin/samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 29050 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29052 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29057 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29060 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29063 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29068 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29071 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29074 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29076 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29077 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29079 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29080 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29085 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29088 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29091 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29093 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29094 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29096 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29097 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29102 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29105 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29108 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29111 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29112 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29114 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29115 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29120 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29123 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29126 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29128 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29129 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29131 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29132 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29137 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29140 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29143 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29145 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29146 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29148 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29149 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29154 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29157 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29160 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29162 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29168 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29173 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29174 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29179 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29182 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29185 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29187 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29188 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29190 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29191 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29196 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29199 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29202 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29204 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29205 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29207 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29208 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29213 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29216 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29219 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29221 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29222 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29224 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29225 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29230 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29233 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29236 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29238 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29239 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29241 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29242 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29247 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29250 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29253 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29255 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29256 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29258 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29259 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29261 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29263 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29265 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29267 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29270 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29272 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29274 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29276 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29278 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29280 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29282 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_regions.bed`
> `/usr/local/bin/Rscript /storage/kdriest/ATACqPCR/scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR`

<pre>
</pre>
Process 29284 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.031GB)

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`
> `Time`	0:00:44	ATACqPCR	_RES_
> `Success`	08-07-18:08:42	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:44
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-07 18:08:42) elapsed:0:00:44 _TIME_

Pypiper terminating spawned child process 28956
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-07 18:15:01) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  f5494a4869d0fc50d6affb6d13756bde11fe1d93
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 18:09:18 -0700
*        Pipeline diff:  1 file changed, 4 insertions(+), 4 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `/usr/local/bin/Rscript ~/ATACqPCR/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
Fatal error: cannot open file '~/ATACqPCR/scripts/make_window_bed.R': No such file or directory
</pre>
Process 29480 returned: (2). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Change status from running to failed

### Pipeline failed at:  (08-07 18:15:02) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 60, in <module>
    pm.run(cmd, qPCR_windows)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 29465
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-07 18:16:50) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  f5494a4869d0fc50d6affb6d13756bde11fe1d93
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 18:09:18 -0700
*        Pipeline diff:  5 files changed, 83 insertions(+), 2 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `/usr/local/bin/Rscript /storage/kdriest/ATACqPCR/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 29561 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /seq/genomes/hg19/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 29568 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29570 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29575 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29578 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29581 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29586 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29589 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29592 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29594 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29595 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29597 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29598 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29603 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29606 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29609 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29611 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29612 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29615 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29616 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29621 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29625 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29628 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29630 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29631 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29633 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29634 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29639 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29642 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29645 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29647 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29648 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29650 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29651 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29656 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29659 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29662 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29664 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29665 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29667 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29668 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29673 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29676 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29679 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29681 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29682 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29684 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29685 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29690 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29693 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29696 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29698 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29699 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29701 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29702 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29707 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29710 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29713 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29715 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29716 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29718 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29719 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29724 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29727 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29730 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29732 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29741 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29743 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29744 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29749 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29752 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29755 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29757 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29758 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29760 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29761 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
Unexpected file format.  Please use tab-delimited BED, GFF, or VCF. Perhaps you have non-integer starts or ends at line 1?
</pre>
Process 29766 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>

*****ERROR: Unrecognized parameter: -f *****


*****ERROR: Unrecognized parameter: 0.9 *****


Tool:    bedtools coverage (aka coverageBed)
Version: v2.17.0
Summary: Returns the depth and breadth of coverage of features from A
	 on the intervals in B.

Usage:   bedtools coverage [OPTIONS] -a <bed/gff/vcf> -b <bed/gff/vcf>

Options: 
	-abam	The A input file is in BAM format. Replaces -a.

	-s	Require same strandedness.  That is, only counts hits in A that
		overlap B on the _same_ strand.
		- By default, overlaps are counted without respect to strand.

	-S	Require different strandedness.  That is, only report hits in A
		that overlap B on the _opposite_ strand.
		- By default, overlaps are counted without respect to strand.

	-hist	Report a histogram of coverage for each feature in B
		as well as a summary histogram for _all_ features in B.

		Output (tab delimited) after each feature in B:
		  1) depth
		  2) # bases at depth
		  3) size of B
		  4) % of B at depth

	-d	Report the depth at each position in each B feature.
		Positions reported are one based.  Each position
		and depth follow the complete B feature.

	-counts	Only report the count of overlaps, don't compute fraction, etc.

	-split	Treat "split" BAM or BED12 entries as distinct BED intervals.
		when computing coverage.
		For BAM files, this uses the CIGAR "N" and "D" operations 
		to infer the blocks for computing coverage.
		For BED12 files, this uses the BlockCount, BlockStarts,
		and BlockEnds fields (i.e., columns 10,11,12).

Default Output:  
	 After each entry in B, reports: 
	   1) The number of features in A that overlapped the B interval.
	   2) The number of bases in B that had non-zero coverage.
	   3) The length of the entry in B.
	   4) The fraction of bases in B that had non-zero coverage.

</pre>
Process 29769 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29772 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29774 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29775 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29777 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29778 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29780 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29782 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29784 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29786 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29788 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29790 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29792 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29794 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29796 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29798 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 29800 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_regions.bed`

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`
> `Time`	0:00:29	ATACqPCR	_RES_
> `Success`	08-07-18:17:19	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:29
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-07 18:17:19) elapsed:0:00:29 _TIME_

Pypiper terminating spawned child process 29546
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-07 18:20:37) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  f5494a4869d0fc50d6affb6d13756bde11fe1d93
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 18:09:18 -0700
*        Pipeline diff:  5 files changed, 1881 insertions(+), 2 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `/usr/local/bin/Rscript /storage/kdriest/ATACqPCR/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 29930 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /seq/genomes/hg19/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 29937 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29939 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29944 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29947 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29950 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29955 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29958 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29961 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29963 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29964 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29966 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29967 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29972 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29975 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29978 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29980 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29981 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 29983 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 29984 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 29989 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 29992 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 29995 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 29997 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 29998 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30000 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30001 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30006 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30009 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30012 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30014 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30015 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30017 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30018 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30023 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30026 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30029 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30031 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30032 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30034 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30035 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30040 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30043 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30046 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30048 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30049 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30051 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30052 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30057 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30060 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30063 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30065 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30066 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30068 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30069 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30074 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30077 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30080 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30082 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30083 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30085 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30086 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30091 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30094 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30101 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30103 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30104 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30106 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30107 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30112 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30115 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30118 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30120 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30121 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30123 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 30124 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 30129 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 30132 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 30136 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 30138 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 30139 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 30141 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30142 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30144 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30146 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30148 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30150 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30152 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30154 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30156 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30158 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30160 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30162 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 30164 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_regions.bed`

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`
> `Time`	0:00:29	ATACqPCR	_RES_
> `Success`	08-07-18:21:06	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:29
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-07 18:21:06) elapsed:0:00:29 _TIME_

Pypiper terminating spawned child process 29915
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-07 18:24:55) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  f5494a4869d0fc50d6affb6d13756bde11fe1d93
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 18:09:18 -0700
*        Pipeline diff:  5 files changed, 3024 insertions(+), 4 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 33, in <module>
    pm = pypiper.PipelineManager(name = "ATACqPCR", outfolder = outfolder, args = args)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 193, in __init__
    config = yaml.load(config_file)
  File "/usr/lib64/python2.7/site-packages/yaml/__init__.py", line 71, in load
    return loader.get_single_data()
  File "/usr/lib64/python2.7/site-packages/yaml/constructor.py", line 37, in get_single_data
    node = self.get_single_node()
  File "/usr/lib64/python2.7/site-packages/yaml/composer.py", line 39, in get_single_node
    if not self.check_event(StreamEndEvent):
  File "/usr/lib64/python2.7/site-packages/yaml/parser.py", line 98, in check_event
    self.current_event = self.state()
  File "/usr/lib64/python2.7/site-packages/yaml/parser.py", line 174, in parse_document_start
    self.peek_token().start_mark)
yaml.parser.ParserError: expected '<document start>', but found '<block mapping start>'
  in "pipelines/ATACqPCR.yaml", line 6, column 1

Pypiper terminating spawned child process 30401

Change status from running to failed

### Pipeline failed at:  (08-07 18:24:55) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-07 18:26:38) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  f5494a4869d0fc50d6affb6d13756bde11fe1d93
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 18:09:18 -0700
*        Pipeline diff:  5 files changed, 3112 insertions(+), 4 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `/usr/local/bin/Rscript ../scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
Fatal error: cannot open file '../scripts/make_window_bed.R': No such file or directory
</pre>
Process 30460 returned: (2). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Change status from running to failed

### Pipeline failed at:  (08-07 18:26:39) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 60, in <module>
    pm.run(cmd, qPCR_windows)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 30445
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-08 15:34:13) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  f5494a4869d0fc50d6affb6d13756bde11fe1d93
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 18:09:18 -0700
*        Pipeline diff:  6 files changed, 3192 insertions(+), 3 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_
Waiting for file lock: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/lock.qPCR_windows.bed (08-08 15:34:13) elapsed:0:00:00 _TIME_

Change status from running to waiting
...----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-08 15:34:42) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  f5494a4869d0fc50d6affb6d13756bde11fe1d93
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-07 18:09:18 -0700
*        Pipeline diff:  6 files changed, 3250 insertions(+), 3 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*             `input3`:  `0.8`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*             `input4`:  `3`
*             `input5`:  `FALSE`
*                `mem`:  `100`
*             `input6`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*             `input7`:  `0.9`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `/usr/local/bin/Rscript /storage/kdriest/ATACqPCR/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 59411 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `/storage/kdriest/bedtools2/bin/bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACqPCR/genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 59418 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59420 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59425 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59428 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59431 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59436 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59439 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59442 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59444 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59445 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59447 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59448 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59453 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59456 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59459 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59461 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59462 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59464 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59465 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59470 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59473 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59476 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59478 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59479 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59481 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59482 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59487 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59490 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59493 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59495 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59496 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59498 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59500 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59505 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59508 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59511 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59513 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59514 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59516 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59517 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59522 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59525 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59528 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59530 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59531 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59533 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59534 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59539 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59542 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59545 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59547 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59548 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59550 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59551 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59556 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59559 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59562 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59564 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59565 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59567 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59568 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59573 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59576 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59579 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59581 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59582 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59584 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59585 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59590 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59600 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59622 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59643 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59649 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59651 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 59652 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 59657 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 59660 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 59663 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 59665 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 59666 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 59668 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59669 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59671 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59673 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59675 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59677 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59679 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59681 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59683 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59685 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59687 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59689 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 59691 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_regions.bed`

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`
> `Time`	0:00:29	ATACqPCR	_RES_
> `Success`	08-08-15:35:11	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:29
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-08 15:35:11) elapsed:0:00:29 _TIME_

Pypiper terminating spawned child process 59395
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-08 17:29:14) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  eff4b4477308762d7848c758d86530cbca84d5f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 16:46:50 -0700
*        Pipeline diff:  1 file changed, 2 insertions(+), 2 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `/usr/local/bin/Rscript scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 3507 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `/storage/kdriest/bedtools2/bin/bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACqPCR/genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 3522 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3524 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3529 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3532 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3535 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3540 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3543 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3546 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3548 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3549 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3551 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3552 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3557 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3560 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3563 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3565 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3566 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3568 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3569 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3574 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3577 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3580 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3582 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3583 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3585 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3586 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3591 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3594 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3597 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3599 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3635 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3637 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3638 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3644 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3649 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3654 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3659 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3662 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3669 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3671 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3676 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3679 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3682 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3684 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3685 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3689 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3691 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3702 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3709 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3712 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3714 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3715 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3723 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3725 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3733 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3738 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3741 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3743 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3766 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3773 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3775 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3787 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3792 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3798 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3801 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3804 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3808 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3809 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3814 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3817 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3820 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3822 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3823 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3825 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `/usr/local/bin/samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | /usr/local/bin/samtools fixmate - - | /storage/kdriest/bedtools2/bin/bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 3826 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 3833 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 3840 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 3848 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 3852 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 3855 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 3859 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3862 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3866 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3869 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3875 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3877 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3879 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3881 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3883 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3885 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3887 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3889 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 3891 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_data/test_peaks_qPCR_regions_corr0.8_cov3.bed`
> `/usr/local/bin/Rscript scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_data/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
Error in file(file, ifelse(append, "a", "w")) : 
  cannot open the connection
Calls: make_cor_plot -> write.table -> file
In addition: Warning message:
In file(file, ifelse(append, "a", "w")) :
  cannot open file '/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_data/test_peaks_qPCR_regions_corr0.8_cov3.bed': No such file or directory
Execution halted
</pre>
Process 3893 returned: (1). Elapsed: 0:00:06. Peak memory: (Process: 0.032GB; Pipeline: 0.031GB)

Change status from running to failed

### Pipeline failed at:  (08-08 17:29:49) elapsed:0:00:35 _TIME_

('Total time: ', '0:00:35')
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 180, in <module>
    pm.run(cmd, qPCR_regions)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 3492
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-08 17:37:12) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  eff4b4477308762d7848c758d86530cbca84d5f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 16:46:50 -0700
*        Pipeline diff:  6 files changed, 992 insertions(+), 3 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4191 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4194 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4197 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4200 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4203 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4205 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4206 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4208 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4209 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4212 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4215 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4217 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4218 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4220 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4221 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4224 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4228 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4230 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4231 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4233 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4234 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4237 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4240 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4242 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4243 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4245 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4246 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4249 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4252 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4254 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4263 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4265 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4266 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4269 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4272 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4274 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4275 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4277 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4278 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4281 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4284 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4286 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4287 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4289 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4290 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4293 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4296 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4298 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4299 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4301 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4302 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4305 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4308 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4310 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4311 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4313 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4314 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4317 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4320 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4322 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4323 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4325 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4326 returned: (0). Elapsed: 0:00:00.
> `/storage/kdriest/bedtools2/bin/bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4329 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4332 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4334 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4335 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4337 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4338 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4340 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4342 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4344 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4346 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4348 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4350 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4352 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4354 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4356 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4358 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4360 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`
> `/usr/local/bin/Rscript scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 4362 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.032GB; Pipeline: 0.0GB)

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`
> `Time`	0:00:26	ATACqPCR	_RES_
> `Success`	08-08-17:37:38	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:26
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-08 17:37:38) elapsed:0:00:26 _TIME_

Pypiper terminating spawned child process 4176
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-08 17:38:59) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  eff4b4477308762d7848c758d86530cbca84d5f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 16:46:50 -0700
*        Pipeline diff:  6 files changed, 1921 insertions(+), 11 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 4401 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 4408 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4410 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4415 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4418 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4421 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4426 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4429 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4432 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4434 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4435 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4437 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4438 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4443 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4446 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4449 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4451 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4452 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4454 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4455 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4460 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4463 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4466 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4468 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4469 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4471 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4472 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4477 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4480 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4483 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4485 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4486 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4488 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4489 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4494 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4497 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4500 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4502 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4503 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4505 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4506 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4511 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4514 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4517 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4519 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4521 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4523 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4524 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4529 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4532 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4535 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4537 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4538 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4540 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4541 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4546 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4549 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4552 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4554 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4555 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4557 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4564 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4572 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4575 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4578 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4580 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4581 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4583 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4584 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4589 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4592 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4595 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4597 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4598 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4600 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 4601 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 4606 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 4609 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 4613 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 4615 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 4616 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 4618 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4619 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4621 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4623 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4625 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4627 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4629 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4631 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4633 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4635 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4637 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4639 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 4641 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`
> `Time`	0:00:29	ATACqPCR	_RES_
> `Success`	08-08-17:39:28	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:29
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-08 17:39:28) elapsed:0:00:29 _TIME_

Pypiper terminating spawned child process 4386
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-09 10:07:33) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 3 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 23902 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 23909 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 23911 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 23916 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 23919 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 23922 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 23927 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 23930 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 23933 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 23935 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 23936 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 23938 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 23939 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 23944 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 23947 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 23950 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 23952 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 23953 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 23955 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 23956 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 23961 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 23964 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 23967 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 23969 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 23970 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 23973 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 23974 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 23979 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 23982 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 23985 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 23987 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 23988 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 23990 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 23991 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 23996 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 23999 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24002 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24004 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24005 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24007 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24008 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24013 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24016 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24019 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24021 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24022 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24024 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24025 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24030 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24033 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24036 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24038 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24039 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24041 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24042 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24047 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24050 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24053 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24055 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24056 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24058 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24059 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24064 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24067 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24070 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24072 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24073 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24075 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24076 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24081 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24084 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24087 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24089 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24090 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24092 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24093 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24098 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24101 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24104 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24106 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24107 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24109 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24110 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24112 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24114 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24116 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24118 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24120 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24122 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24124 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24126 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24128 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24130 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24132 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`
> `Time`	0:00:29	ATACqPCR	_RES_
> `Success`	08-09-10:08:02	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:29
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-09 10:08:02) elapsed:0:00:29 _TIME_

Pypiper terminating spawned child process 23887
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-09 10:12:04) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  5 files changed, 1026 insertions(+), 3 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 24507 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 24514 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24516 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24521 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24524 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24527 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24532 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24535 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24538 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24540 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24541 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24543 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24544 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24549 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24552 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24555 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24557 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24558 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24560 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24561 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24566 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24569 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24572 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24574 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24575 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24577 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24578 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24583 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24586 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24589 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24591 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24592 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24594 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24595 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24600 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24603 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24606 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24608 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24609 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24611 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24612 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24617 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24620 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24623 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24625 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24626 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24628 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24629 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24634 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24637 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24640 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24642 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24643 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24645 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24646 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24651 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24654 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24657 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24659 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24660 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24662 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24663 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24668 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24671 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24674 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24676 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24677 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24679 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24680 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24685 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24688 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24691 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24693 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24694 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24696 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24697 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24702 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24705 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24708 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24710 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24711 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24713 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24714 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24716 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24718 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24720 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24722 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24724 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24726 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24728 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24730 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24732 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24734 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24736 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`
> `Time`	0:00:29	ATACqPCR	_RES_
> `Success`	08-09-10:12:33	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:29
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-09 10:12:33) elapsed:0:00:29 _TIME_

Pypiper terminating spawned child process 24492
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-09 10:12:59) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  6 files changed, 2051 insertions(+), 16 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 24764 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 24779 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24781 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24786 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24789 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24792 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24797 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24800 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24803 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24805 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24806 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24808 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24809 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24814 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24817 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24820 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24822 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24823 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24825 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24826 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24831 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24834 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24837 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24839 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24840 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24842 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24843 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24848 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24851 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24854 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24856 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24857 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24859 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24860 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24865 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24868 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24871 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24873 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24874 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24876 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24877 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24882 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24885 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24888 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24890 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24891 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24893 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24894 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24899 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24902 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24905 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24907 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24908 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24910 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24911 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24916 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24919 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24922 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24924 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24925 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24927 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24928 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24933 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24936 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24939 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24941 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24942 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24944 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24945 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24950 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24953 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24956 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24958 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24959 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24961 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 24962 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 24967 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 24970 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 24973 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 24975 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 24976 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 24978 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24979 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24981 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24983 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24985 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24987 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24989 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24991 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24993 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24995 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24997 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 24999 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25001 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`
> `Rscript scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 25003 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.032GB; Pipeline: 0.031GB)

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`
> `Time`	0:00:35	ATACqPCR	_RES_
> `Success`	08-09-10:13:33	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:35
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-09 10:13:33) elapsed:0:00:35 _TIME_

Pypiper terminating spawned child process 24749
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-09 10:20:33) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  6 files changed, 3097 insertions(+), 15 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 25251 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 25258 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25260 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25265 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25268 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25271 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25277 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25280 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25283 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25285 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25286 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25288 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25289 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25294 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25297 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25300 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25302 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25303 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25305 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25306 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25311 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25314 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25317 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25319 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25320 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25322 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25323 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25328 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25331 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25334 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25336 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25337 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25339 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25340 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25345 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25348 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25351 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25353 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25354 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25356 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25357 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25362 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25365 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25368 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25370 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25371 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25373 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25374 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25379 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25382 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25385 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25387 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25388 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25390 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25391 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25396 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25399 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25402 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25404 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25405 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25407 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25408 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25413 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25416 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25419 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25421 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25422 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25424 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25425 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25430 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25433 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25436 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25438 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25439 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25441 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 25442 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25447 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25450 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25453 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25455 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25456 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25458 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25459 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25461 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25463 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25465 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25468 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25470 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25472 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25474 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25476 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25478 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25480 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25482 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `Rscript scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 25492 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.032GB; Pipeline: 0.031GB)
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 178, in <module>
    pm.run(cmd, lock_name = qPCR_regions)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 497, in run
    os.remove(lock_file)  # Remove lock file
OSError: [Errno 2] No such file or directory: '/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/lock./storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed'

Pypiper terminating spawned child process 25236

Change status from running to failed

### Pipeline failed at:  (08-09 10:21:08) elapsed:0:00:35 _TIME_

('Total time: ', '0:00:35')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-09 10:22:33) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  6 files changed, 4093 insertions(+), 15 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25538 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25541 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25544 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25547 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25550 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25552 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25553 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25555 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25556 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25559 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25562 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25564 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25565 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25567 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25568 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25571 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25574 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25576 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25577 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25579 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25580 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25583 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25586 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25588 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25589 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25591 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25592 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25595 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25598 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25600 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25601 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25603 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25604 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25607 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25610 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25612 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25613 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25615 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25616 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25619 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25622 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25624 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25625 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25627 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25628 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25631 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25634 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25636 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25637 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25639 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25640 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25643 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25646 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25648 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25649 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25651 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25652 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25655 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25658 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25660 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25661 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25663 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 25664 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 25667 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 25670 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 25672 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 25673 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 25675 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25676 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25678 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25680 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25682 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25684 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25686 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25688 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25690 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25692 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25694 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25696 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt`

<pre>
</pre>
Process 25698 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `Rscript scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 25700 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.032GB; Pipeline: 0.0GB)

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`
> `Time`	0:00:26	ATACqPCR	_RES_
> `Success`	08-09-10:22:59	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:26
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-09 10:22:59) elapsed:0:00:26 _TIME_

Pypiper terminating spawned child process 25523
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-09 10:27:43) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 5019 insertions(+), 32 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 26104 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 26111 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26113 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26118 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26121 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26124 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26129 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26132 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26135 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26137 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26138 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26140 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26141 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26146 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26149 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26152 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26154 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26155 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26161 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26182 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26207 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26218 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26221 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26223 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26224 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26226 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26227 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26232 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26235 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26238 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26240 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26241 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26243 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26244 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26249 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26252 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26255 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26257 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26258 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26260 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26261 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26266 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26269 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26272 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26274 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26275 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26277 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26278 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26283 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26286 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26289 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26291 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26292 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26294 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26295 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26301 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26304 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26307 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26309 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26318 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26320 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26321 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26326 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26329 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26332 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26334 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26335 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26337 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26338 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26343 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26346 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26349 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26351 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26352 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26354 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 26355 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26360 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26363 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26366 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26368 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26369 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26371 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 178, in <module>
    cmd += combined_read_counts + " " + str(param.outfolder) + " " + str(qPCR_regions)
NameError: name 'combined_read_counts' is not defined

Pypiper terminating spawned child process 26089

Change status from running to failed

### Pipeline failed at:  (08-09 10:28:09) elapsed:0:00:26 _TIME_

('Total time: ', '0:00:26')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-09 10:29:16) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 5884 insertions(+), 33 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26481 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26484 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26487 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26490 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26493 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26495 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26497 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26499 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26500 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26503 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26506 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26508 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26509 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26511 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26512 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26515 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26519 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26521 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26522 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26525 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26526 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26529 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26532 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26535 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26536 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26538 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26541 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26545 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26548 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26550 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26551 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26553 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26555 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26558 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26561 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26564 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26565 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26567 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26568 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26571 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26574 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26576 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26577 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26579 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26580 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26583 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26586 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26588 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26589 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26591 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26592 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26595 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26598 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26600 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26602 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26604 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26605 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26609 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26612 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26614 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26616 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26618 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 26619 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 26622 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 26625 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 26627 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 26628 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 26631 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Targetless command, running...
> `Rscript scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 26632 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.032GB; Pipeline: 0.0GB)

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`
> `Time`	0:00:23	ATACqPCR	_RES_
> `Success`	08-09-10:29:39	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:23
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-09 10:29:39) elapsed:0:00:23 _TIME_

Pypiper terminating spawned child process 26466
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 12:03:32) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  3 files changed, 16 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `TRUE`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 51, in <module>
    if return_seq:
NameError: name 'return_seq' is not defined

Pypiper terminating spawned child process 7492

Change status from running to failed

### Pipeline failed at:  (08-14 12:03:32) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 12:05:04) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  6 files changed, 97 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 51, in <module>
    if return_seq:
NameError: name 'return_seq' is not defined

Pypiper terminating spawned child process 7798

Change status from running to failed

### Pipeline failed at:  (08-14 12:05:04) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib64/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1055, in _exit_handler
    self.fail_pipeline(Exception("Unknown exit failure"))
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Unknown exit failure
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 13:21:00) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  6 files changed, 178 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript /storage/kdriest/ATACqPCR/scripts/find_qPCR_regions.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
Error in file(file, "rt") : cannot open the connection
Calls: read.delim -> read.table -> file
In addition: Warning message:
In file(file, "rt") : cannot open file '100': No such file or directory
Execution halted
</pre>
Process 17233 returned: (1). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Change status from running to failed

### Pipeline failed at:  (08-14 13:21:01) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 67, in <module>
    pm.run(cmd, qPCR_windows)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 17218
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 13:24:58) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  7 files changed, 266 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_
Waiting for file lock: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/lock.qPCR_windows.bed (08-14 13:24:58) elapsed:0:00:00 _TIME_

Change status from running to waiting
..----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 13:25:25) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  7 files changed, 325 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript /storage/kdriest/ATACqPCR/scripts/find_qPCR_regions.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
Error in file(file, "rt") : cannot open the connection
Calls: read.delim -> read.table -> file
In addition: Warning message:
In file(file, "rt") : cannot open file '100': No such file or directory
Execution halted
</pre>
Process 17798 returned: (1). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Change status from running to failed

### Pipeline failed at:  (08-14 13:25:25) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 67, in <module>
    pm.run(cmd, qPCR_windows)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 17783
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 17:09:07) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  7 files changed, 412 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript /storage/kdriest/ATACqPCR/scripts/find_qPCR_regions.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
Error in file(file, "rt") : cannot open the connection
Calls: read.delim -> read.table -> file
In addition: Warning message:
In file(file, "rt") : cannot open file '100': No such file or directory
Execution halted
</pre>
Process 44018 returned: (1). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Change status from running to failed

### Pipeline failed at:  (08-14 17:09:07) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:00')
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 67, in <module>
    pm.run(cmd, qPCR_windows)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 44003
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 17:16:03) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  7 files changed, 500 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`
> `Rscript /storage/kdriest/ATACqPCR/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

<pre>
</pre>
Process 44784 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACqPCR/genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

<pre>
</pre>
Process 44791 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44793 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44798 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44801 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44804 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44809 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44812 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44815 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44817 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44818 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44820 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44821 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44826 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44829 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44832 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44834 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: -1.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44835 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44837 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44838 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44843 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44846 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44849 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44851 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44852 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44854 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44855 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44860 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44863 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44866 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44868 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44869 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44871 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44872 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44877 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44880 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44883 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44885 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44886 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44888 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44889 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44894 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44897 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44900 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44902 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44903 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44905 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44906 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44911 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44915 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44919 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44921 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44922 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44925 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44926 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44932 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44935 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44938 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44940 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44941 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44943 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44944 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44949 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44952 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44955 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44957 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44958 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44960 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44961 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44966 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44969 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44972 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44974 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44975 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44977 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`
> `samtools sort -n /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

<pre>
</pre>
Process 44978 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 44985 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 44988 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 44991 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 44993 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 44994 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 44996 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.031GB)

Targetless command, running...
> `Rscript /storage/kdriest/ATACqPCR/scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 44997 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.031GB)

Targetless command, running...
> `bedtools getfasta -fi /storage/kdriest/ATACqPCR/genomes/hg19_chr.fa bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed`

<pre>
*****ERROR: Unrecognized parameter: bed *****

*****ERROR: Unrecognized parameter: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed *****


Tool:    bedtools getfasta (aka fastaFromBed)
Version: v2.26.0
Summary: Extract DNA sequences from a fasta file based on feature coordinates.

Usage:   bedtools getfasta [OPTIONS] -fi <fasta> -bed <bed/gff/vcf>

Options: 
	-fi	Input FASTA file
	-bed	BED/GFF/VCF file of ranges to extract from -fi
	-name	Use the name field for the FASTA header
	-split	given BED12 fmt., extract and concatenate the sequencesfrom the BED "blocks" (e.g., exons)
	-tab	Write output in TAB delimited format.
		- Default is FASTA format.

	-s	Force strandedness. If the feature occupies the antisense,
		strand, the sequence will be reverse complemented.
		- By default, strand information is ignored.

	-fullHeader	Use full fasta header.
		- By default, only the word before the first space or tab is used.

</pre>
Process 45007 returned: (1). Elapsed: 0:00:00.

Change status from running to failed

### Pipeline failed at:  (08-14 17:16:35) elapsed:0:00:32 _TIME_

('Total time: ', '0:00:32')
Traceback (most recent call last):
  File "pipelines/ATACqPCR.py", line 192, in <module>
    pm.run(cmd, lock_name = "qPCR_regions_seq")
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 44769
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/
*  Pipeline started at:   (08-14 17:18:20) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  61bed95fb01528c5ef8c23b69b0ee32712f60366
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-09 11:02:28 -0700
*        Pipeline diff:  7 files changed, 1399 insertions(+), 5 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*        `window_size`:  `100`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_qPCR`
*        `config_file`:  `ATACqPCR.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*        `corr_cutoff`:  `0.8`
*        `return_plot`:  `FALSE`
*    `genome_assembly`:  `hg19`
*    `percent_overlap`:  `0.9`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*         `return_seq`:  `True`
*       `force_follow`:  `False`
*         `cov_cutoff`:  `3`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `/storage/kdriest/ATACqPCR/genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	ATACqPCR	_RES_

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45279 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45282 returned: (0). Elapsed: 0:00:00.

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45285 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45288 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45291 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45293 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45294 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45296 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45297 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45300 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45303 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45305 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45306 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45308 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45309 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45312 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45315 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45317 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45318 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45320 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45321 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45324 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45327 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45329 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45330 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45332 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45333 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45336 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45339 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45341 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45342 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45344 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45345 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45348 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45351 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45353 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45354 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45356 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45357 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45360 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45363 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45365 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45366 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45368 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45369 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45372 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45375 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45377 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45378 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45380 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45381 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45384 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45387 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45389 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45390 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45392 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45393 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45396 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45399 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45401 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45402 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45404 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

<pre>
</pre>
Process 45405 returned: (0). Elapsed: 0:00:00.
> `bedtools coverage -a /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed -b /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

<pre>
</pre>
Process 45408 returned: (0). Elapsed: 0:00:00.
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed`

<pre>
</pre>
Process 45412 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.o.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

<pre>
</pre>
Process 45415 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)
> `paste /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed`

<pre>
</pre>
Process 45416 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.temp.f9.bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`

<pre>
</pre>
Process 45418 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Targetless command, running...
> `Rscript /storage/kdriest/ATACqPCR/scripts/find_qPCR_regions.R /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage 0.8 3 FALSE /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/read_counts.txt /storage/kdriest/ATACqPCR/test_out/BJ_qPCR /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed`

<pre>
</pre>
Process 45419 returned: (0). Elapsed: 0:00:06. Peak memory: (Process: 0.031GB; Pipeline: 0.0GB)

Targetless command, running...
> `bedtools getfasta -fi /storage/kdriest/ATACqPCR/genomes/hg19_chr.fa -bed /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed`

<pre>
index file /storage/kdriest/ATACqPCR/genomes/hg19_chr.fa.fai not found, generating...
</pre>
Process 45427 returned: (0). Elapsed: 0:00:16.

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/qPCR_windows.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.includeinsert.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.o.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/temp.f9.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.o.coverage`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage
`rm /storage/kdriest/ATACqPCR/test_out/BJ_qPCR/combined.f9.coverage`
> `Time`	0:00:39	ATACqPCR	_RES_
> `Success`	08-14-17:18:59	ATACqPCR	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:39
*     Peak memory used:  0.03 GB
* Pipeline completed at:  (08-14 17:18:59) elapsed:0:00:39 _TIME_

Pypiper terminating spawned child process 45264
