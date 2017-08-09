----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/filter_bams.py -P 3 -M 100 -O test_out -S BJ_filtered_bams -G hg19 -C filter_bams.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/
*  Pipeline started at:   (08-09 10:38:40) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 6685 insertions(+), 33 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_filtered_bams`
*        `config_file`:  `filter_bams.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Traceback (most recent call last):
  File "pipelines/filter_bams.py", line 44, in <module>
    param.outfolder = outfolder
NameError: name 'param' is not defined

Pypiper terminating spawned child process 27203

Change status from running to failed

### Pipeline failed at:  (08-09 10:38:40) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/filter_bams.py -P 3 -M 100 -O test_out -S BJ_filtered_bams -G hg19 -C filter_bams.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/
*  Pipeline started at:   (08-09 10:39:22) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 6685 insertions(+), 33 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_filtered_bams`
*        `config_file`:  `filter_bams.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Traceback (most recent call last):
  File "pipelines/filter_bams.py", line 45, in <module>
    param.outfolder = outfolder
AttributeError: 'str' object has no attribute 'outfolder'

Pypiper terminating spawned child process 27382

Change status from running to failed

### Pipeline failed at:  (08-09 10:39:22) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/filter_bams.py -P 3 -M 100 -O test_out -S BJ_filtered_bams -G hg19 -C filter_bams.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/
*  Pipeline started at:   (08-09 10:41:12) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 6685 insertions(+), 33 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_filtered_bams`
*        `config_file`:  `filter_bams.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Traceback (most recent call last):
  File "pipelines/filter_bams.py", line 45, in <module>
    param.outfolder = outfolder
AttributeError: 'str' object has no attribute 'outfolder'

Pypiper terminating spawned child process 27768

Change status from running to failed

### Pipeline failed at:  (08-09 10:41:12) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/filter_bams.py -P 3 -M 100 -O test_out -S BJ_filtered_bams -G hg19 -C filter_bams.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/
*  Pipeline started at:   (08-09 10:42:30) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 6685 insertions(+), 33 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_filtered_bams`
*        `config_file`:  `filter_bams.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Traceback (most recent call last):
  File "pipelines/filter_bams.py", line 45, in <module>
    param.outfolder = outfolder
AttributeError: 'NoneType' object has no attribute 'outfolder'

Pypiper terminating spawned child process 27875

Change status from running to failed

### Pipeline failed at:  (08-09 10:42:30) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/filter_bams.py -P 3 -M 100 -O test_out -S BJ_filtered_bams -G hg19 -C filter_bams.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/
*  Pipeline started at:   (08-09 10:43:04) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 6685 insertions(+), 33 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_filtered_bams`
*        `config_file`:  `filter_bams.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	filter_bams	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed`

<pre>
</pre>
Process 27926 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27928 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27930 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27932 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27934 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27936 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27938 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27940 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27942 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27945 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27947 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27949 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27951 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27953 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27955 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27957 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27959 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27961 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27963 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27965 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27967 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27969 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27971 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `samtools view -c -F 1284 test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

<pre>
</pre>
Process 27973 returned: (0). Elapsed: 0:00:00.

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`
> `samtools view -b -L /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

<pre>
</pre>
Process 27975 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27977 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27979 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27981 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27983 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27985 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27987 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27989 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27991 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27993 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27995 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27997 returned: (0). Elapsed: 0:00:00.

Targetless command, running...
> `cat /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt >> /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/read_counts.txt`

<pre>
</pre>
Process 27999 returned: (0). Elapsed: 0:00:00.

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed`
> `Time`	0:00:09	filter_bams	_RES_
> `Success`	08-09-10:43:13	filter_bams	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:09
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-09 10:43:13) elapsed:0:00:09 _TIME_

Pypiper terminating spawned child process 27911
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/filter_bams.py -P 3 -M 100 -O test_out -S BJ_filtered_bams -G hg19 -C filter_bams.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACqPCR
*            Outfolder:  /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/
*  Pipeline started at:   (08-09 10:45:45) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACqPCR/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  ff3d298662c26eafcc21928cb319a01b1656a513
*      Pipeline branch:  * master
*        Pipeline date:  2017-08-08 18:08:15 -0700
*        Pipeline diff:  7 files changed, 6687 insertions(+), 33 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `['test_data/test_peaks.bed']`
*       `manual_clean`:  `False`
*              `input`:  `['test_data/BJ_bams/']`
*                `mem`:  `100`
*        `sample_name`:  `BJ_filtered_bams`
*        `config_file`:  `filter_bams.yaml`
*      `output_parent`:  `test_out`
*   `single_or_paired`:  `single`
*    `genome_assembly`:  `hg19`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz

Target exists: `genomes/hg19.chromSizes`
Bam file directory: test_data/BJ_bams/
Peak bed file: test_data/test_peaks.bed
> `Genome`	hg19	filter_bams	_RES_

Target to produce: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed`
> `bedtools slop  -i test_data/test_peaks.bed -g genomes/hg19.chromSizes -b 2000 > /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed`

<pre>
</pre>
Process 28188 returned: (0). Elapsed: 0:00:00.

Target exists: `test_data/BJ_bams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Target exists: `test_data/BJ_bams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.bam.bai`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Target exists: `/storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter.filter.bam`

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/ext_peak.bed`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-DMSO-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-JQ1-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-THZ-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-1h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-2h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`

Removing glob: /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt
`rm /storage/kdriest/ATACqPCR/test_out/BJ_filtered_bams/filteredbams/BJ-TopI-6h.trim.sort.nuc.uniq.rmdup.filter_read_counts.txt`
> `Time`	0:00:00	filter_bams	_RES_
> `Success`	08-09-10:45:46	filter_bams	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:00
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (08-09 10:45:46) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 28173
