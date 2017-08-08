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
