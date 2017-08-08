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
