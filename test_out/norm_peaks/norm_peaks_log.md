----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -P 3 -M 100 -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-03 17:46:05) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.13
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  8c4005d63a2f0d465d9c7817b6845c4f7adef80f
*      Pipeline branch:  * master
*        Pipeline date:  2017-09-28 16:55:08 -0700
*        Pipeline diff:  73 files changed, 61 insertions(+), 18742 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed']`
*                `mem`:  `100`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Tue Oct 03 17:46:08 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Tue Oct 03 17:46:08 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-03 17:46:08	MarkDuplicates	Start of doWork freeMemory: 503974488; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-03 17:46:08	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-03 17:46:08	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-03 17:46:19	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:10s.  Time for last 1,000,000:   10s.  Last read position: chr1:19,366,915
INFO	2017-10-03 17:46:19	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:46:28	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:19s.  Time for last 1,000,000:    9s.  Last read position: chr1:39,084,245
INFO	2017-10-03 17:46:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:46:38	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:29s.  Time for last 1,000,000:    9s.  Last read position: chr1:62,948,281
INFO	2017-10-03 17:46:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:47:06	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:57s.  Time for last 1,000,000:   27s.  Last read position: chr1:93,847,246
INFO	2017-10-03 17:47:06	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-03 17:47:20	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:01:12s.  Time for last 1,000,000:   14s.  Last read position: chr1:150,166,212
INFO	2017-10-03 17:47:20	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:47:28	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:20s.  Time for last 1,000,000:    7s.  Last read position: chr1:172,533,000
INFO	2017-10-03 17:47:28	MarkDuplicates	Tracking 44 as yet unmatched pairs. 44 records in RAM.
INFO	2017-10-03 17:47:43	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:35s.  Time for last 1,000,000:   14s.  Last read position: chr1:202,532,193
INFO	2017-10-03 17:47:43	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-03 17:48:06	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:57s.  Time for last 1,000,000:   22s.  Last read position: chr1:226,788,911
INFO	2017-10-03 17:48:06	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:48:21	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:02:13s.  Time for last 1,000,000:   15s.  Last read position: chr2:4,825,934
INFO	2017-10-03 17:48:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:48:41	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:02:33s.  Time for last 1,000,000:   19s.  Last read position: chr2:29,295,797
INFO	2017-10-03 17:48:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:48:58	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:02:50s.  Time for last 1,000,000:   17s.  Last read position: chr2:56,255,972
INFO	2017-10-03 17:48:58	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:49:17	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:03:09s.  Time for last 1,000,000:   19s.  Last read position: chr2:85,433,381
INFO	2017-10-03 17:49:17	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-03 17:49:33	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:03:25s.  Time for last 1,000,000:   15s.  Last read position: chr2:119,872,615
INFO	2017-10-03 17:49:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:49:56	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:03:48s.  Time for last 1,000,000:   23s.  Last read position: chr2:152,060,733
INFO	2017-10-03 17:49:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:50:14	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:04:06s.  Time for last 1,000,000:   17s.  Last read position: chr2:182,897,718
INFO	2017-10-03 17:50:14	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:50:30	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:04:22s.  Time for last 1,000,000:   16s.  Last read position: chr2:214,579,126
INFO	2017-10-03 17:50:30	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:50:47	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:04:39s.  Time for last 1,000,000:   17s.  Last read position: chr2:238,513,273
INFO	2017-10-03 17:50:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:50:58	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:04:49s.  Time for last 1,000,000:   10s.  Last read position: chr3:20,453,455
INFO	2017-10-03 17:50:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:51:05	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:57s.  Time for last 1,000,000:    7s.  Last read position: chr3:48,243,031
INFO	2017-10-03 17:51:05	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:51:13	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:05:04s.  Time for last 1,000,000:    7s.  Last read position: chr3:72,665,342
INFO	2017-10-03 17:51:13	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:51:27	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:05:19s.  Time for last 1,000,000:   14s.  Last read position: chr3:110,638,607
INFO	2017-10-03 17:51:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:51:34	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:05:26s.  Time for last 1,000,000:    6s.  Last read position: chr3:136,193,259
INFO	2017-10-03 17:51:34	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-03 17:51:43	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:05:35s.  Time for last 1,000,000:    8s.  Last read position: chr3:167,310,004
INFO	2017-10-03 17:51:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:51:53	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:05:44s.  Time for last 1,000,000:    9s.  Last read position: chr3:194,844,320
INFO	2017-10-03 17:51:53	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:52:06	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:05:57s.  Time for last 1,000,000:   13s.  Last read position: chr4:21,255,833
INFO	2017-10-03 17:52:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:52:14	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:06:05s.  Time for last 1,000,000:    7s.  Last read position: chr4:54,793,581
INFO	2017-10-03 17:52:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:52:24	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:06:16s.  Time for last 1,000,000:   10s.  Last read position: chr4:87,205,531
INFO	2017-10-03 17:52:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:52:38	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:06:30s.  Time for last 1,000,000:   13s.  Last read position: chr4:120,472,331
INFO	2017-10-03 17:52:38	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:52:46	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:06:37s.  Time for last 1,000,000:    7s.  Last read position: chr4:152,944,001
INFO	2017-10-03 17:52:46	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:52:54	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:06:46s.  Time for last 1,000,000:    8s.  Last read position: chr4:185,780,483
INFO	2017-10-03 17:52:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:53:04	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:06:56s.  Time for last 1,000,000:   10s.  Last read position: chr5:27,635,449
INFO	2017-10-03 17:53:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:53:16	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:07:07s.  Time for last 1,000,000:   11s.  Last read position: chr5:62,827,445
INFO	2017-10-03 17:53:16	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:53:24	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:07:15s.  Time for last 1,000,000:    8s.  Last read position: chr5:95,784,243
INFO	2017-10-03 17:53:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:53:33	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:07:25s.  Time for last 1,000,000:    9s.  Last read position: chr5:128,340,214
INFO	2017-10-03 17:53:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:53:48	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:07:40s.  Time for last 1,000,000:   14s.  Last read position: chr5:151,897,889
INFO	2017-10-03 17:53:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:54:06	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:07:57s.  Time for last 1,000,000:   17s.  Last read position: chr5:178,228,346
INFO	2017-10-03 17:54:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:54:13	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:08:05s.  Time for last 1,000,000:    7s.  Last read position: chr6:20,940,309
INFO	2017-10-03 17:54:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:54:23	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:08:15s.  Time for last 1,000,000:   10s.  Last read position: chr6:42,268,800
INFO	2017-10-03 17:54:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:54:34	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:08:25s.  Time for last 1,000,000:   10s.  Last read position: chr6:75,655,473
INFO	2017-10-03 17:54:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:54:48	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:08:39s.  Time for last 1,000,000:   13s.  Last read position: chr6:109,082,273
INFO	2017-10-03 17:54:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:54:58	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:08:49s.  Time for last 1,000,000:    9s.  Last read position: chr6:138,044,620
INFO	2017-10-03 17:54:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:55:13	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:09:05s.  Time for last 1,000,000:   15s.  Last read position: chr6:164,013,573
INFO	2017-10-03 17:55:13	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-03 17:55:20	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:09:12s.  Time for last 1,000,000:    7s.  Last read position: chr7:19,397,939
INFO	2017-10-03 17:55:20	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:55:29	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:09:21s.  Time for last 1,000,000:    9s.  Last read position: chr7:45,896,909
INFO	2017-10-03 17:55:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:55:40	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:09:32s.  Time for last 1,000,000:   10s.  Last read position: chr7:81,856,071
INFO	2017-10-03 17:55:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:55:49	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:09:40s.  Time for last 1,000,000:    8s.  Last read position: chr7:110,130,954
INFO	2017-10-03 17:55:49	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:55:58	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:09:49s.  Time for last 1,000,000:    9s.  Last read position: chr7:139,673,374
INFO	2017-10-03 17:55:58	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-03 17:56:07	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:09:58s.  Time for last 1,000,000:    9s.  Last read position: chr8:10,152,329
INFO	2017-10-03 17:56:07	MarkDuplicates	Tracking 24 as yet unmatched pairs. 24 records in RAM.
INFO	2017-10-03 17:56:24	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:10:16s.  Time for last 1,000,000:   17s.  Last read position: chr8:37,209,296
INFO	2017-10-03 17:56:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:56:33	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:10:25s.  Time for last 1,000,000:    8s.  Last read position: chr8:68,921,979
INFO	2017-10-03 17:56:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:56:44	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:10:35s.  Time for last 1,000,000:   10s.  Last read position: chr8:100,908,176
INFO	2017-10-03 17:56:44	MarkDuplicates	Tracking 22 as yet unmatched pairs. 22 records in RAM.
INFO	2017-10-03 17:56:55	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:10:47s.  Time for last 1,000,000:   11s.  Last read position: chr8:128,755,318
INFO	2017-10-03 17:56:55	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:57:03	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:10:54s.  Time for last 1,000,000:    7s.  Last read position: chr9:7,077,133
INFO	2017-10-03 17:57:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:57:11	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:11:03s.  Time for last 1,000,000:    8s.  Last read position: chr9:37,432,993
INFO	2017-10-03 17:57:11	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:57:21	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:11:13s.  Time for last 1,000,000:    9s.  Last read position: chr9:92,652,057
INFO	2017-10-03 17:57:21	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-03 17:57:35	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:11:26s.  Time for last 1,000,000:   13s.  Last read position: chr9:118,748,807
INFO	2017-10-03 17:57:35	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:57:43	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:11:35s.  Time for last 1,000,000:    8s.  Last read position: chr9:137,169,779
INFO	2017-10-03 17:57:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:57:51	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:11:43s.  Time for last 1,000,000:    7s.  Last read position: chr10:25,681,491
INFO	2017-10-03 17:57:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:58:04	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:11:55s.  Time for last 1,000,000:   12s.  Last read position: chr10:60,516,875
INFO	2017-10-03 17:58:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:58:14	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:12:06s.  Time for last 1,000,000:   10s.  Last read position: chr10:86,713,131
INFO	2017-10-03 17:58:14	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:58:22	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:12:14s.  Time for last 1,000,000:    7s.  Last read position: chr10:112,798,278
INFO	2017-10-03 17:58:22	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:58:33	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:12:25s.  Time for last 1,000,000:   11s.  Last read position: chr11:2,377,410
INFO	2017-10-03 17:58:33	MarkDuplicates	Tracking 16 as yet unmatched pairs. 16 records in RAM.
INFO	2017-10-03 17:58:47	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:12:39s.  Time for last 1,000,000:   13s.  Last read position: chr11:28,746,401
INFO	2017-10-03 17:58:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 17:58:56	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:12:47s.  Time for last 1,000,000:    8s.  Last read position: chr11:61,826,667
INFO	2017-10-03 17:58:56	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:59:05	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:12:57s.  Time for last 1,000,000:    9s.  Last read position: chr11:79,714,302
INFO	2017-10-03 17:59:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:59:16	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:13:07s.  Time for last 1,000,000:   10s.  Last read position: chr11:112,499,922
INFO	2017-10-03 17:59:16	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-03 17:59:25	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:13:17s.  Time for last 1,000,000:    9s.  Last read position: chr12:953,564
INFO	2017-10-03 17:59:25	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:59:33	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:13:25s.  Time for last 1,000,000:    8s.  Last read position: chr12:27,896,712
INFO	2017-10-03 17:59:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 17:59:42	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:13:33s.  Time for last 1,000,000:    8s.  Last read position: chr12:56,412,189
INFO	2017-10-03 17:59:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 17:59:56	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:13:47s.  Time for last 1,000,000:   13s.  Last read position: chr12:88,088,325
INFO	2017-10-03 17:59:56	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 18:00:05	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:13:56s.  Time for last 1,000,000:    9s.  Last read position: chr12:113,941,228
INFO	2017-10-03 18:00:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:00:14	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:14:05s.  Time for last 1,000,000:    9s.  Last read position: chr13:22,498,013
INFO	2017-10-03 18:00:14	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:00:25	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:14:16s.  Time for last 1,000,000:   10s.  Last read position: chr13:49,950,556
INFO	2017-10-03 18:00:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:00:33	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:14:24s.  Time for last 1,000,000:    8s.  Last read position: chr13:85,881,001
INFO	2017-10-03 18:00:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:00:42	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:14:34s.  Time for last 1,000,000:    9s.  Last read position: chr14:20,455,531
INFO	2017-10-03 18:00:42	MarkDuplicates	Tracking 30 as yet unmatched pairs. 30 records in RAM.
INFO	2017-10-03 18:00:51	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:14:43s.  Time for last 1,000,000:    8s.  Last read position: chr14:51,435,308
INFO	2017-10-03 18:00:51	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 18:01:05	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:14:57s.  Time for last 1,000,000:   14s.  Last read position: chr14:76,053,615
INFO	2017-10-03 18:01:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:01:12	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:15:04s.  Time for last 1,000,000:    6s.  Last read position: chr14:102,187,513
INFO	2017-10-03 18:01:12	MarkDuplicates	Tracking 34 as yet unmatched pairs. 34 records in RAM.
INFO	2017-10-03 18:01:19	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:15:11s.  Time for last 1,000,000:    7s.  Last read position: chr15:44,086,798
INFO	2017-10-03 18:01:19	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:01:31	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:15:23s.  Time for last 1,000,000:   12s.  Last read position: chr15:69,845,180
INFO	2017-10-03 18:01:31	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 18:01:41	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:15:32s.  Time for last 1,000,000:    9s.  Last read position: chr15:93,946,983
INFO	2017-10-03 18:01:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:01:50	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:15:42s.  Time for last 1,000,000:    9s.  Last read position: chr16:15,141,246
INFO	2017-10-03 18:01:50	MarkDuplicates	Tracking 16 as yet unmatched pairs. 16 records in RAM.
INFO	2017-10-03 18:02:00	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:15:52s.  Time for last 1,000,000:    9s.  Last read position: chr16:56,447,870
INFO	2017-10-03 18:02:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:02:16	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:16:08s.  Time for last 1,000,000:   15s.  Last read position: chr16:81,872,053
INFO	2017-10-03 18:02:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:02:25	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:16:16s.  Time for last 1,000,000:    8s.  Last read position: chr17:9,500,124
INFO	2017-10-03 18:02:25	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 18:02:33	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:16:25s.  Time for last 1,000,000:    8s.  Last read position: chr17:38,575,966
INFO	2017-10-03 18:02:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:02:44	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:16:36s.  Time for last 1,000,000:   10s.  Last read position: chr17:59,566,269
INFO	2017-10-03 18:02:44	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:02:52	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:16:43s.  Time for last 1,000,000:    7s.  Last read position: chr17:81,103,130
INFO	2017-10-03 18:02:52	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:03:01	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:16:53s.  Time for last 1,000,000:    9s.  Last read position: chr18:28,804,048
INFO	2017-10-03 18:03:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 18:03:16	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:17:07s.  Time for last 1,000,000:   14s.  Last read position: chr18:58,547,843
INFO	2017-10-03 18:03:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:03:24	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:17:16s.  Time for last 1,000,000:    8s.  Last read position: chr19:3,119,646
INFO	2017-10-03 18:03:24	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:03:32	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:17:23s.  Time for last 1,000,000:    7s.  Last read position: chr19:19,276,802
INFO	2017-10-03 18:03:32	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-03 18:03:41	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:17:32s.  Time for last 1,000,000:    9s.  Last read position: chr19:45,903,210
INFO	2017-10-03 18:03:41	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-03 18:03:52	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:17:44s.  Time for last 1,000,000:   11s.  Last read position: chr20:7,574,119
INFO	2017-10-03 18:03:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:04:00	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:17:52s.  Time for last 1,000,000:    8s.  Last read position: chr20:37,356,612
INFO	2017-10-03 18:04:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:04:09	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:18:01s.  Time for last 1,000,000:    8s.  Last read position: chr20:59,103,252
INFO	2017-10-03 18:04:09	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-03 18:04:24	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:18:15s.  Time for last 1,000,000:   14s.  Last read position: chr21:35,256,506
INFO	2017-10-03 18:04:24	MarkDuplicates	Tracking 30 as yet unmatched pairs. 30 records in RAM.
INFO	2017-10-03 18:04:32	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:18:23s.  Time for last 1,000,000:    8s.  Last read position: chr22:27,196,216
INFO	2017-10-03 18:04:32	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:04:41	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:18:33s.  Time for last 1,000,000:    9s.  Last read position: chr22:45,739,523
INFO	2017-10-03 18:04:41	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-03 18:04:50	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:18:42s.  Time for last 1,000,000:    8s.  Last read position: chrX:22,439,861
INFO	2017-10-03 18:04:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 18:05:01	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:18:52s.  Time for last 1,000,000:   10s.  Last read position: chrX:56,563,290
INFO	2017-10-03 18:05:01	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-03 18:05:11	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:19:02s.  Time for last 1,000,000:   10s.  Last read position: chrX:103,360,414
INFO	2017-10-03 18:05:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-03 18:05:19	MarkDuplicates	Read   103,000,000 records.  Elapsed time: 00:19:11s.  Time for last 1,000,000:    8s.  Last read position: chrX:138,635,730
INFO	2017-10-03 18:05:19	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-03 18:05:24	MarkDuplicates	Read 103609116 records. 0 pairs never matched.
INFO	2017-10-03 18:05:30	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1036591496; totalMemory: 1046478848; maxMemory: 1046478848
INFO	2017-10-03 18:05:30	MarkDuplicates	Will retain up to 32702464 duplicate indices before spilling to disk.
INFO	2017-10-03 18:05:30	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-03 18:05:57	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-03 18:06:44	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-03 18:06:44	MarkDuplicates	After generateDuplicateIndexes freeMemory: 796479320; totalMemory: 1067974656; maxMemory: 1067974656
INFO	2017-10-03 18:06:44	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-03 18:06:44	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-03 18:06:44	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-03 18:09:02	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:17s.  Time for last 10,000,000:  137s.  Last read position: chr2:29,295,797
INFO	2017-10-03 18:11:28	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:43s.  Time for last 10,000,000:  145s.  Last read position: chr3:72,665,342
INFO	2017-10-03 18:13:57	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:07:12s.  Time for last 10,000,000:  149s.  Last read position: chr4:185,780,483
INFO	2017-10-03 18:16:24	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:09:39s.  Time for last 10,000,000:  146s.  Last read position: chr6:109,082,273
INFO	2017-10-03 18:18:55	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:12:10s.  Time for last 10,000,000:  150s.  Last read position: chr8:68,921,979
INFO	2017-10-03 18:21:58	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:15:13s.  Time for last 10,000,000:  183s.  Last read position: chr10:86,713,131
INFO	2017-10-03 18:24:54	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:18:09s.  Time for last 10,000,000:  176s.  Last read position: chr12:88,088,325
INFO	2017-10-03 18:27:19	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:20:34s.  Time for last 10,000,000:  144s.  Last read position: chr15:69,845,180
INFO	2017-10-03 18:29:45	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:23:00s.  Time for last 10,000,000:  145s.  Last read position: chr18:58,547,843
INFO	2017-10-03 18:32:13	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:25:28s.  Time for last 10,000,000:  147s.  Last read position: chrX:22,439,861
INFO	2017-10-03 18:33:05	MarkDuplicates	Before output close freeMemory: 1062716192; totalMemory: 1073217536; maxMemory: 1073217536
INFO	2017-10-03 18:33:05	MarkDuplicates	After output close freeMemory: 1062702656; totalMemory: 1073217536; maxMemory: 1073217536
[Tue Oct 03 18:33:05 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 46.97 minutes.
Runtime.totalMemory()=1073217536
</pre>
Process 50486 returned: (0). Elapsed: 0:47:36.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

<pre>
</pre>
Process 53243 returned: (0). Elapsed: 0:05:33. Peak memory: (Process: 0.02GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 54210 returned: (0). Elapsed: 0:18:34. Peak memory: (Process: 0.002GB; Pipeline: 0.02GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n adipose_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Tue, 03 Oct 2017 18:57:49: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n adipose_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = adipose_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Tue, 03 Oct 2017 18:57:49: #1 read tag files... 
INFO  @ Tue, 03 Oct 2017 18:57:49: #1 read treatment tags... 
INFO  @ Tue, 03 Oct 2017 18:57:52:  1000000 
INFO  @ Tue, 03 Oct 2017 18:57:54:  2000000 
INFO  @ Tue, 03 Oct 2017 18:57:57:  3000000 
INFO  @ Tue, 03 Oct 2017 18:58:00:  4000000 
INFO  @ Tue, 03 Oct 2017 18:58:03:  5000000 
INFO  @ Tue, 03 Oct 2017 18:58:06:  6000000 
INFO  @ Tue, 03 Oct 2017 18:58:08:  7000000 
INFO  @ Tue, 03 Oct 2017 18:58:11:  8000000 
INFO  @ Tue, 03 Oct 2017 18:58:14:  9000000 
INFO  @ Tue, 03 Oct 2017 18:58:16:  10000000 
INFO  @ Tue, 03 Oct 2017 18:58:19:  11000000 
INFO  @ Tue, 03 Oct 2017 18:58:22:  12000000 
INFO  @ Tue, 03 Oct 2017 18:58:24:  13000000 
INFO  @ Tue, 03 Oct 2017 18:58:27:  14000000 
INFO  @ Tue, 03 Oct 2017 18:58:29:  15000000 
INFO  @ Tue, 03 Oct 2017 18:58:32:  16000000 
INFO  @ Tue, 03 Oct 2017 18:58:35:  17000000 
INFO  @ Tue, 03 Oct 2017 18:58:37:  18000000 
INFO  @ Tue, 03 Oct 2017 18:58:40:  19000000 
INFO  @ Tue, 03 Oct 2017 18:58:42:  20000000 
INFO  @ Tue, 03 Oct 2017 18:58:45:  21000000 
INFO  @ Tue, 03 Oct 2017 18:58:48:  22000000 
INFO  @ Tue, 03 Oct 2017 18:58:51:  23000000 
INFO  @ Tue, 03 Oct 2017 18:58:54:  24000000 
INFO  @ Tue, 03 Oct 2017 18:58:56:  25000000 
INFO  @ Tue, 03 Oct 2017 18:58:59:  26000000 
INFO  @ Tue, 03 Oct 2017 18:59:02:  27000000 
INFO  @ Tue, 03 Oct 2017 18:59:04:  28000000 
INFO  @ Tue, 03 Oct 2017 18:59:07:  29000000 
INFO  @ Tue, 03 Oct 2017 18:59:10:  30000000 
INFO  @ Tue, 03 Oct 2017 18:59:12:  31000000 
INFO  @ Tue, 03 Oct 2017 18:59:15:  32000000 
INFO  @ Tue, 03 Oct 2017 18:59:17:  33000000 
INFO  @ Tue, 03 Oct 2017 18:59:20:  34000000 
INFO  @ Tue, 03 Oct 2017 18:59:22:  35000000 
INFO  @ Tue, 03 Oct 2017 18:59:25:  36000000 
INFO  @ Tue, 03 Oct 2017 18:59:28:  37000000 
INFO  @ Tue, 03 Oct 2017 18:59:30:  38000000 
INFO  @ Tue, 03 Oct 2017 18:59:33:  39000000 
INFO  @ Tue, 03 Oct 2017 18:59:36:  40000000 
INFO  @ Tue, 03 Oct 2017 18:59:39:  41000000 
INFO  @ Tue, 03 Oct 2017 18:59:41:  42000000 
INFO  @ Tue, 03 Oct 2017 18:59:44:  43000000 
INFO  @ Tue, 03 Oct 2017 18:59:47:  44000000 
INFO  @ Tue, 03 Oct 2017 18:59:49:  45000000 
INFO  @ Tue, 03 Oct 2017 18:59:52:  46000000 
INFO  @ Tue, 03 Oct 2017 18:59:55:  47000000 
INFO  @ Tue, 03 Oct 2017 18:59:58:  48000000 
INFO  @ Tue, 03 Oct 2017 19:00:01:  49000000 
INFO  @ Tue, 03 Oct 2017 19:00:03:  50000000 
INFO  @ Tue, 03 Oct 2017 19:00:06:  51000000 
INFO  @ Tue, 03 Oct 2017 19:00:09:  52000000 
INFO  @ Tue, 03 Oct 2017 19:00:11:  53000000 
INFO  @ Tue, 03 Oct 2017 19:00:14:  54000000 
INFO  @ Tue, 03 Oct 2017 19:00:17:  55000000 
INFO  @ Tue, 03 Oct 2017 19:00:20:  56000000 
INFO  @ Tue, 03 Oct 2017 19:00:23:  57000000 
INFO  @ Tue, 03 Oct 2017 19:00:26:  58000000 
INFO  @ Tue, 03 Oct 2017 19:00:28:  59000000 
INFO  @ Tue, 03 Oct 2017 19:00:31:  60000000 
INFO  @ Tue, 03 Oct 2017 19:00:34:  61000000 
INFO  @ Tue, 03 Oct 2017 19:00:36:  62000000 
INFO  @ Tue, 03 Oct 2017 19:00:39:  63000000 
INFO  @ Tue, 03 Oct 2017 19:00:42:  64000000 
INFO  @ Tue, 03 Oct 2017 19:00:45:  65000000 
INFO  @ Tue, 03 Oct 2017 19:00:48:  66000000 
INFO  @ Tue, 03 Oct 2017 19:00:50:  67000000 
INFO  @ Tue, 03 Oct 2017 19:00:53:  68000000 
INFO  @ Tue, 03 Oct 2017 19:00:56:  69000000 
INFO  @ Tue, 03 Oct 2017 19:00:59:  70000000 
INFO  @ Tue, 03 Oct 2017 19:01:01:  71000000 
INFO  @ Tue, 03 Oct 2017 19:01:04:  72000000 
INFO  @ Tue, 03 Oct 2017 19:01:07:  73000000 
INFO  @ Tue, 03 Oct 2017 19:01:09:  74000000 
INFO  @ Tue, 03 Oct 2017 19:01:12:  75000000 
INFO  @ Tue, 03 Oct 2017 19:01:15:  76000000 
INFO  @ Tue, 03 Oct 2017 19:01:17:  77000000 
INFO  @ Tue, 03 Oct 2017 19:01:20:  78000000 
INFO  @ Tue, 03 Oct 2017 19:01:23:  79000000 
INFO  @ Tue, 03 Oct 2017 19:01:25:  80000000 
INFO  @ Tue, 03 Oct 2017 19:01:28:  81000000 
INFO  @ Tue, 03 Oct 2017 19:01:30:  82000000 
INFO  @ Tue, 03 Oct 2017 19:01:33:  83000000 
INFO  @ Tue, 03 Oct 2017 19:01:36:  84000000 
INFO  @ Tue, 03 Oct 2017 19:01:38:  85000000 
INFO  @ Tue, 03 Oct 2017 19:01:41:  86000000 
INFO  @ Tue, 03 Oct 2017 19:01:43:  87000000 
INFO  @ Tue, 03 Oct 2017 19:01:46:  88000000 
INFO  @ Tue, 03 Oct 2017 19:01:49:  89000000 
INFO  @ Tue, 03 Oct 2017 19:01:51:  90000000 
INFO  @ Tue, 03 Oct 2017 19:01:54:  91000000 
INFO  @ Tue, 03 Oct 2017 19:01:56:  92000000 
INFO  @ Tue, 03 Oct 2017 19:01:59:  93000000 
INFO  @ Tue, 03 Oct 2017 19:02:02:  94000000 
INFO  @ Tue, 03 Oct 2017 19:02:04:  95000000 
INFO  @ Tue, 03 Oct 2017 19:02:07:  96000000 
INFO  @ Tue, 03 Oct 2017 19:02:09:  97000000 
INFO  @ Tue, 03 Oct 2017 19:02:12:  98000000 
INFO  @ Tue, 03 Oct 2017 19:02:14:  99000000 
INFO  @ Tue, 03 Oct 2017 19:02:17:  100000000 
INFO  @ Tue, 03 Oct 2017 19:02:20:  101000000 
INFO  @ Tue, 03 Oct 2017 19:02:23:  102000000 
INFO  @ Tue, 03 Oct 2017 19:02:26:  103000000 
INFO  @ Tue, 03 Oct 2017 19:02:32: #1 tag size is determined as 50 bps 
INFO  @ Tue, 03 Oct 2017 19:02:32: #1 tag size = 50 
INFO  @ Tue, 03 Oct 2017 19:02:32: #1  total tags in treatment: 103609116 
INFO  @ Tue, 03 Oct 2017 19:02:32: #1 user defined the maximum tags... 
INFO  @ Tue, 03 Oct 2017 19:02:32: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Tue, 03 Oct 2017 19:02:35: #1  tags after filtering in treatment: 93755425 
INFO  @ Tue, 03 Oct 2017 19:02:35: #1  Redundant rate of treatment: 0.10 
INFO  @ Tue, 03 Oct 2017 19:02:35: #1 finished! 
INFO  @ Tue, 03 Oct 2017 19:02:35: #2 Build Peak Model... 
INFO  @ Tue, 03 Oct 2017 19:02:35: #2 Skipped... 
INFO  @ Tue, 03 Oct 2017 19:02:35: #2 Use 200 as fragment length 
INFO  @ Tue, 03 Oct 2017 19:02:35: #3 Call peaks... 
INFO  @ Tue, 03 Oct 2017 19:02:35: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Tue, 03 Oct 2017 19:08:44: #3 Call peaks for each chromosome... 
INFO  @ Tue, 03 Oct 2017 19:12:27: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.xls 
INFO  @ Tue, 03 Oct 2017 19:12:29: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak 
INFO  @ Tue, 03 Oct 2017 19:12:29: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_summits.bed 
INFO  @ Tue, 03 Oct 2017 19:12:30: Done! 
</pre>
Process 54834 returned: (0). Elapsed: 0:15:34. Peak memory: (Process: 1.158GB; Pipeline: 0.02GB)

Target to produce: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.filter.bam.bai`
> `samtools index /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.filter.bam`

<pre>
[E::hts_open_format] Failed to open file /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.filter.bam
samtools index: failed to open "/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.filter.bam": No such file or directory
</pre>
Process 55529 returned: (1). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 1.158GB)

Change status from running to failed

### Pipeline failed at:  (10-03 19:13:22) elapsed:1:27:17 _TIME_

('Total time: ', '1:27:17')
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 69, in <module>
    pm.run(cmd, index)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 50471
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -P 3 -M 100 -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-04 08:44:48) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.13
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  8c4005d63a2f0d465d9c7817b6845c4f7adef80f
*      Pipeline branch:  * master
*        Pipeline date:  2017-09-28 16:55:08 -0700
*        Pipeline diff:  73 files changed, 61 insertions(+), 18742 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed']`
*                `mem`:  `100`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 08:44:49 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 08:44:49 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 08:44:49	MarkDuplicates	Start of doWork freeMemory: 503974512; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 08:44:49	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 08:44:49	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 08:45:02	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:12s.  Time for last 1,000,000:   12s.  Last read position: chr1:36,211,671
INFO	2017-10-04 08:45:02	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:45:12	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:22s.  Time for last 1,000,000:   10s.  Last read position: chr1:82,063,575
INFO	2017-10-04 08:45:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:45:24	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:34s.  Time for last 1,000,000:   11s.  Last read position: chr1:157,689,842
INFO	2017-10-04 08:45:24	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:45:35	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:45s.  Time for last 1,000,000:   11s.  Last read position: chr1:205,444,905
INFO	2017-10-04 08:45:35	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:45:45	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:56s.  Time for last 1,000,000:   10s.  Last read position: chr2:1,888,038
INFO	2017-10-04 08:45:45	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 08:45:55	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:05s.  Time for last 1,000,000:    9s.  Last read position: chr2:45,116,102
INFO	2017-10-04 08:45:55	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:46:11	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:21s.  Time for last 1,000,000:   15s.  Last read position: chr2:99,563,775
INFO	2017-10-04 08:46:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:46:21	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:31s.  Time for last 1,000,000:    9s.  Last read position: chr2:148,880,853
INFO	2017-10-04 08:46:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:46:29	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:39s.  Time for last 1,000,000:    7s.  Last read position: chr2:200,075,690
INFO	2017-10-04 08:46:29	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:46:36	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:47s.  Time for last 1,000,000:    7s.  Last read position: chr2:241,754,219
INFO	2017-10-04 08:46:36	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:46:47	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:57s.  Time for last 1,000,000:   10s.  Last read position: chr3:45,088,659
INFO	2017-10-04 08:46:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:46:56	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:06s.  Time for last 1,000,000:    9s.  Last read position: chr3:95,546,005
INFO	2017-10-04 08:46:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:47:12	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:23s.  Time for last 1,000,000:   16s.  Last read position: chr3:141,948,682
INFO	2017-10-04 08:47:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:47:28	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:39s.  Time for last 1,000,000:   15s.  Last read position: chr3:192,678,503
INFO	2017-10-04 08:47:28	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 08:47:37	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:02:47s.  Time for last 1,000,000:    8s.  Last read position: chr4:40,137,841
INFO	2017-10-04 08:47:37	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:47:47	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:02:58s.  Time for last 1,000,000:   10s.  Last read position: chr4:98,113,798
INFO	2017-10-04 08:47:47	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:47:57	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:08s.  Time for last 1,000,000:   10s.  Last read position: chr4:152,233,470
INFO	2017-10-04 08:47:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:48:08	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:03:19s.  Time for last 1,000,000:   11s.  Last read position: chr5:9,808,602
INFO	2017-10-04 08:48:08	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:48:18	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:03:29s.  Time for last 1,000,000:    9s.  Last read position: chr5:68,016,326
INFO	2017-10-04 08:48:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:48:28	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:03:39s.  Time for last 1,000,000:   10s.  Last read position: chr5:122,562,887
INFO	2017-10-04 08:48:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:48:42	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:03:53s.  Time for last 1,000,000:   14s.  Last read position: chr5:166,711,864
INFO	2017-10-04 08:48:42	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:48:50	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:04:01s.  Time for last 1,000,000:    7s.  Last read position: chr6:28,895,076
INFO	2017-10-04 08:48:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:49:00	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:04:10s.  Time for last 1,000,000:    9s.  Last read position: chr6:79,414,584
INFO	2017-10-04 08:49:00	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:49:09	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:04:19s.  Time for last 1,000,000:    8s.  Last read position: chr6:131,337,116
INFO	2017-10-04 08:49:09	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:49:21	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:04:31s.  Time for last 1,000,000:   12s.  Last read position: chr7:3,439,607
INFO	2017-10-04 08:49:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 08:49:31	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:04:41s.  Time for last 1,000,000:   10s.  Last read position: chr7:50,862,549
INFO	2017-10-04 08:49:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:49:40	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:04:51s.  Time for last 1,000,000:    9s.  Last read position: chr7:110,687,701
INFO	2017-10-04 08:49:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:49:55	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:05:05s.  Time for last 1,000,000:   14s.  Last read position: chr7:157,700,613
INFO	2017-10-04 08:49:55	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:50:05	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:05:15s.  Time for last 1,000,000:    9s.  Last read position: chr8:48,105,295
INFO	2017-10-04 08:50:05	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:50:14	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:05:24s.  Time for last 1,000,000:    9s.  Last read position: chr8:100,950,594
INFO	2017-10-04 08:50:14	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-04 08:50:22	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:05:32s.  Time for last 1,000,000:    8s.  Last read position: chr8:144,048,360
INFO	2017-10-04 08:50:22	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 08:50:32	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:05:43s.  Time for last 1,000,000:   10s.  Last read position: chr9:76,595,164
INFO	2017-10-04 08:50:32	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:50:43	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:05:53s.  Time for last 1,000,000:   10s.  Last read position: chr9:122,128,171
INFO	2017-10-04 08:50:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:50:50	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:06:01s.  Time for last 1,000,000:    7s.  Last read position: chr10:23,742,000
INFO	2017-10-04 08:50:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:51:06	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:06:16s.  Time for last 1,000,000:   15s.  Last read position: chr10:77,595,330
INFO	2017-10-04 08:51:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:51:15	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:06:26s.  Time for last 1,000,000:    9s.  Last read position: chr10:121,493,740
INFO	2017-10-04 08:51:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:51:25	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:06:35s.  Time for last 1,000,000:    9s.  Last read position: chr11:26,915,321
INFO	2017-10-04 08:51:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:51:34	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:06:44s.  Time for last 1,000,000:    9s.  Last read position: chr11:75,183,806
INFO	2017-10-04 08:51:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:51:45	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:06:55s.  Time for last 1,000,000:   10s.  Last read position: chr11:122,304,480
INFO	2017-10-04 08:51:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:51:53	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:07:04s.  Time for last 1,000,000:    8s.  Last read position: chr12:32,014,036
INFO	2017-10-04 08:51:53	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:52:04	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:07:14s.  Time for last 1,000,000:   10s.  Last read position: chr12:86,124,855
INFO	2017-10-04 08:52:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:52:18	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:07:28s.  Time for last 1,000,000:   13s.  Last read position: chr12:130,557,491
INFO	2017-10-04 08:52:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:52:25	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:07:35s.  Time for last 1,000,000:    7s.  Last read position: chr13:65,694,238
INFO	2017-10-04 08:52:25	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:52:35	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:07:45s.  Time for last 1,000,000:    9s.  Last read position: chr14:20,440,554
INFO	2017-10-04 08:52:35	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:52:46	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:07:56s.  Time for last 1,000,000:   11s.  Last read position: chr14:72,651,237
INFO	2017-10-04 08:52:46	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 08:52:54	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:08:05s.  Time for last 1,000,000:    8s.  Last read position: chr15:31,571,467
INFO	2017-10-04 08:52:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:53:05	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:08:15s.  Time for last 1,000,000:   10s.  Last read position: chr15:79,830,958
INFO	2017-10-04 08:53:05	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:53:13	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:08:24s.  Time for last 1,000,000:    8s.  Last read position: chr16:22,807,579
INFO	2017-10-04 08:53:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:53:27	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:08:38s.  Time for last 1,000,000:   14s.  Last read position: chr16:81,863,919
INFO	2017-10-04 08:53:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:53:36	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:08:47s.  Time for last 1,000,000:    8s.  Last read position: chr17:36,943,842
INFO	2017-10-04 08:53:36	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:53:46	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:08:56s.  Time for last 1,000,000:    9s.  Last read position: chr17:80,085,500
INFO	2017-10-04 08:53:46	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:54:00	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:09:10s.  Time for last 1,000,000:   13s.  Last read position: chr18:48,079,881
INFO	2017-10-04 08:54:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:54:08	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:09:18s.  Time for last 1,000,000:    8s.  Last read position: chr19:9,819,726
INFO	2017-10-04 08:54:08	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 08:54:17	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:09:27s.  Time for last 1,000,000:    8s.  Last read position: chr19:58,387,052
INFO	2017-10-04 08:54:17	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 08:54:27	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:09:38s.  Time for last 1,000,000:   10s.  Last read position: chr20:47,493,265
INFO	2017-10-04 08:54:27	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 08:54:42	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:09:52s.  Time for last 1,000,000:   14s.  Last read position: chr21:42,072,857
INFO	2017-10-04 08:54:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:54:51	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:10:01s.  Time for last 1,000,000:    8s.  Last read position: chr22:50,286,657
INFO	2017-10-04 08:54:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:55:01	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:10:11s.  Time for last 1,000,000:   10s.  Last read position: chrX:56,124,540
INFO	2017-10-04 08:55:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 08:55:13	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:10:23s.  Time for last 1,000,000:   11s.  Last read position: chrX:131,068,971
INFO	2017-10-04 08:55:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 08:55:17	MarkDuplicates	Read 59481110 records. 0 pairs never matched.
INFO	2017-10-04 08:55:20	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1037399440; totalMemory: 1047527424; maxMemory: 1047527424
INFO	2017-10-04 08:55:20	MarkDuplicates	Will retain up to 32735232 duplicate indices before spilling to disk.
INFO	2017-10-04 08:55:20	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 08:55:36	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 08:56:00	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 08:56:00	MarkDuplicates	After generateDuplicateIndexes freeMemory: 794027216; totalMemory: 1065877504; maxMemory: 1065877504
INFO	2017-10-04 08:56:00	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 08:56:00	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 08:56:00	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 08:58:19	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:18s.  Time for last 10,000,000:  138s.  Last read position: chr2:241,754,219
INFO	2017-10-04 09:00:45	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:44s.  Time for last 10,000,000:  145s.  Last read position: chr5:122,562,887
INFO	2017-10-04 09:03:11	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:07:10s.  Time for last 10,000,000:  146s.  Last read position: chr8:100,950,594
INFO	2017-10-04 09:05:36	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:09:36s.  Time for last 10,000,000:  145s.  Last read position: chr12:32,014,036
INFO	2017-10-04 09:07:59	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:11:58s.  Time for last 10,000,000:  142s.  Last read position: chr17:36,943,842
INFO	2017-10-04 09:10:21	MarkDuplicates	Before output close freeMemory: 1062724952; totalMemory: 1073217536; maxMemory: 1073217536
INFO	2017-10-04 09:10:21	MarkDuplicates	After output close freeMemory: 1062711408; totalMemory: 1073217536; maxMemory: 1073217536
[Wed Oct 04 09:10:21 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 25.53 minutes.
Runtime.totalMemory()=1073217536
</pre>
Process 8326 returned: (0). Elapsed: 0:25:34.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`

<pre>
</pre>
Process 9351 returned: (0). Elapsed: 0:03:02. Peak memory: (Process: 0.017GB; Pipeline: 0.0GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 9383 returned: (0). Elapsed: 0:09:34. Peak memory: (Process: 0.002GB; Pipeline: 0.017GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n artery_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 09:22:59: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n artery_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = artery_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 09:22:59: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 09:22:59: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 09:23:02:  1000000 
INFO  @ Wed, 04 Oct 2017 09:23:04:  2000000 
INFO  @ Wed, 04 Oct 2017 09:23:07:  3000000 
INFO  @ Wed, 04 Oct 2017 09:23:09:  4000000 
INFO  @ Wed, 04 Oct 2017 09:23:12:  5000000 
INFO  @ Wed, 04 Oct 2017 09:23:14:  6000000 
INFO  @ Wed, 04 Oct 2017 09:23:17:  7000000 
INFO  @ Wed, 04 Oct 2017 09:23:20:  8000000 
INFO  @ Wed, 04 Oct 2017 09:23:22:  9000000 
INFO  @ Wed, 04 Oct 2017 09:23:25:  10000000 
INFO  @ Wed, 04 Oct 2017 09:23:27:  11000000 
INFO  @ Wed, 04 Oct 2017 09:23:30:  12000000 
INFO  @ Wed, 04 Oct 2017 09:23:33:  13000000 
INFO  @ Wed, 04 Oct 2017 09:23:35:  14000000 
INFO  @ Wed, 04 Oct 2017 09:23:38:  15000000 
INFO  @ Wed, 04 Oct 2017 09:23:41:  16000000 
INFO  @ Wed, 04 Oct 2017 09:23:43:  17000000 
INFO  @ Wed, 04 Oct 2017 09:23:46:  18000000 
INFO  @ Wed, 04 Oct 2017 09:23:49:  19000000 
INFO  @ Wed, 04 Oct 2017 09:23:51:  20000000 
INFO  @ Wed, 04 Oct 2017 09:23:54:  21000000 
INFO  @ Wed, 04 Oct 2017 09:23:56:  22000000 
INFO  @ Wed, 04 Oct 2017 09:23:59:  23000000 
INFO  @ Wed, 04 Oct 2017 09:24:02:  24000000 
INFO  @ Wed, 04 Oct 2017 09:24:04:  25000000 
INFO  @ Wed, 04 Oct 2017 09:24:07:  26000000 
INFO  @ Wed, 04 Oct 2017 09:24:09:  27000000 
INFO  @ Wed, 04 Oct 2017 09:24:12:  28000000 
INFO  @ Wed, 04 Oct 2017 09:24:14:  29000000 
INFO  @ Wed, 04 Oct 2017 09:24:17:  30000000 
INFO  @ Wed, 04 Oct 2017 09:24:20:  31000000 
INFO  @ Wed, 04 Oct 2017 09:24:23:  32000000 
INFO  @ Wed, 04 Oct 2017 09:24:25:  33000000 
INFO  @ Wed, 04 Oct 2017 09:24:28:  34000000 
INFO  @ Wed, 04 Oct 2017 09:24:30:  35000000 
INFO  @ Wed, 04 Oct 2017 09:24:33:  36000000 
INFO  @ Wed, 04 Oct 2017 09:24:36:  37000000 
INFO  @ Wed, 04 Oct 2017 09:24:38:  38000000 
INFO  @ Wed, 04 Oct 2017 09:24:41:  39000000 
INFO  @ Wed, 04 Oct 2017 09:24:44:  40000000 
INFO  @ Wed, 04 Oct 2017 09:24:46:  41000000 
INFO  @ Wed, 04 Oct 2017 09:24:48:  42000000 
INFO  @ Wed, 04 Oct 2017 09:24:51:  43000000 
INFO  @ Wed, 04 Oct 2017 09:24:53:  44000000 
INFO  @ Wed, 04 Oct 2017 09:24:56:  45000000 
INFO  @ Wed, 04 Oct 2017 09:24:59:  46000000 
INFO  @ Wed, 04 Oct 2017 09:25:02:  47000000 
INFO  @ Wed, 04 Oct 2017 09:25:04:  48000000 
INFO  @ Wed, 04 Oct 2017 09:25:07:  49000000 
INFO  @ Wed, 04 Oct 2017 09:25:10:  50000000 
INFO  @ Wed, 04 Oct 2017 09:25:13:  51000000 
INFO  @ Wed, 04 Oct 2017 09:25:15:  52000000 
INFO  @ Wed, 04 Oct 2017 09:25:18:  53000000 
INFO  @ Wed, 04 Oct 2017 09:25:20:  54000000 
INFO  @ Wed, 04 Oct 2017 09:25:23:  55000000 
INFO  @ Wed, 04 Oct 2017 09:25:26:  56000000 
INFO  @ Wed, 04 Oct 2017 09:25:28:  57000000 
INFO  @ Wed, 04 Oct 2017 09:25:31:  58000000 
INFO  @ Wed, 04 Oct 2017 09:25:34:  59000000 
INFO  @ Wed, 04 Oct 2017 09:25:37: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 09:25:37: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 09:25:37: #1  total tags in treatment: 59481110 
INFO  @ Wed, 04 Oct 2017 09:25:37: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 09:25:37: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 09:25:40: #1  tags after filtering in treatment: 56343112 
INFO  @ Wed, 04 Oct 2017 09:25:40: #1  Redundant rate of treatment: 0.05 
INFO  @ Wed, 04 Oct 2017 09:25:40: #1 finished! 
INFO  @ Wed, 04 Oct 2017 09:25:40: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 09:25:40: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 09:25:40: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 09:25:40: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 09:25:40: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 09:30:51: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 09:33:52: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 09:33:53: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 09:33:53: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 09:33:54: Done! 
</pre>
Process 9576 returned: (0). Elapsed: 0:11:34. Peak memory: (Process: 0.759GB; Pipeline: 0.017GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 09:34:33 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 09:34:33 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 09:34:34	MarkDuplicates	Start of doWork freeMemory: 503974352; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 09:34:34	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 09:34:34	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 09:34:50	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:15s.  Time for last 1,000,000:   15s.  Last read position: chr1:16,645,467
INFO	2017-10-04 09:34:50	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 09:35:04	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:29s.  Time for last 1,000,000:   13s.  Last read position: chr1:33,099,569
INFO	2017-10-04 09:35:04	MarkDuplicates	Tracking 90 as yet unmatched pairs. 90 records in RAM.
INFO	2017-10-04 09:35:13	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:38s.  Time for last 1,000,000:    8s.  Last read position: chr1:53,955,115
INFO	2017-10-04 09:35:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:35:25	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:50s.  Time for last 1,000,000:   12s.  Last read position: chr1:82,762,389
INFO	2017-10-04 09:35:25	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:35:34	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:59s.  Time for last 1,000,000:    8s.  Last read position: chr1:111,232,159
INFO	2017-10-04 09:35:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:35:43	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:08s.  Time for last 1,000,000:    8s.  Last read position: chr1:159,313,242
INFO	2017-10-04 09:35:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:35:56	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:22s.  Time for last 1,000,000:   13s.  Last read position: chr1:185,156,993
INFO	2017-10-04 09:35:56	MarkDuplicates	Tracking 82 as yet unmatched pairs. 82 records in RAM.
INFO	2017-10-04 09:36:05	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:30s.  Time for last 1,000,000:    8s.  Last read position: chr1:210,393,072
INFO	2017-10-04 09:36:05	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:36:15	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:40s.  Time for last 1,000,000:    9s.  Last read position: chr1:234,809,593
INFO	2017-10-04 09:36:15	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 09:36:24	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:49s.  Time for last 1,000,000:    8s.  Last read position: chr2:11,559,820
INFO	2017-10-04 09:36:24	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:36:41	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:02:06s.  Time for last 1,000,000:   17s.  Last read position: chr2:36,243,921
INFO	2017-10-04 09:36:41	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:36:59	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:24s.  Time for last 1,000,000:   17s.  Last read position: chr2:61,909,834
INFO	2017-10-04 09:36:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:37:16	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:41s.  Time for last 1,000,000:   17s.  Last read position: chr2:88,825,268
INFO	2017-10-04 09:37:16	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 09:37:39	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:03:04s.  Time for last 1,000,000:   22s.  Last read position: chr2:121,106,307
INFO	2017-10-04 09:37:39	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:37:58	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:03:23s.  Time for last 1,000,000:   18s.  Last read position: chr2:152,015,601
INFO	2017-10-04 09:37:58	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:38:17	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:03:42s.  Time for last 1,000,000:   19s.  Last read position: chr2:181,024,969
INFO	2017-10-04 09:38:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:38:38	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:04:03s.  Time for last 1,000,000:   20s.  Last read position: chr2:211,259,672
INFO	2017-10-04 09:38:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:38:59	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:04:24s.  Time for last 1,000,000:   21s.  Last read position: chr2:235,635,354
INFO	2017-10-04 09:38:59	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:39:16	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:41s.  Time for last 1,000,000:   17s.  Last read position: chr3:14,826,108
INFO	2017-10-04 09:39:16	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:39:35	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:05:00s.  Time for last 1,000,000:   19s.  Last read position: chr3:42,709,507
INFO	2017-10-04 09:39:35	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:39:58	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:05:24s.  Time for last 1,000,000:   23s.  Last read position: chr3:64,089,161
INFO	2017-10-04 09:39:58	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:40:16	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:05:41s.  Time for last 1,000,000:   17s.  Last read position: chr3:99,080,070
INFO	2017-10-04 09:40:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:40:32	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:05:57s.  Time for last 1,000,000:   15s.  Last read position: chr3:127,098,907
INFO	2017-10-04 09:40:32	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:40:51	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:06:16s.  Time for last 1,000,000:   19s.  Last read position: chr3:153,643,165
INFO	2017-10-04 09:40:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:41:13	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:06:38s.  Time for last 1,000,000:   22s.  Last read position: chr3:184,001,788
INFO	2017-10-04 09:41:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:41:32	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:06:57s.  Time for last 1,000,000:   18s.  Last read position: chr4:6,658,522
INFO	2017-10-04 09:41:32	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 09:41:51	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:07:16s.  Time for last 1,000,000:   18s.  Last read position: chr4:36,785,709
INFO	2017-10-04 09:41:51	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:42:14	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:07:39s.  Time for last 1,000,000:   22s.  Last read position: chr4:71,516,814
INFO	2017-10-04 09:42:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:42:32	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:07:57s.  Time for last 1,000,000:   18s.  Last read position: chr4:101,676,153
INFO	2017-10-04 09:42:32	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:42:49	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:08:14s.  Time for last 1,000,000:   17s.  Last read position: chr4:135,212,556
INFO	2017-10-04 09:42:49	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:43:08	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:08:33s.  Time for last 1,000,000:   19s.  Last read position: chr4:165,883,090
INFO	2017-10-04 09:43:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:43:29	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:08:54s.  Time for last 1,000,000:   20s.  Last read position: chr5:4,237,639
INFO	2017-10-04 09:43:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:43:49	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:09:14s.  Time for last 1,000,000:   19s.  Last read position: chr5:36,315,866
INFO	2017-10-04 09:43:49	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:44:07	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:09:32s.  Time for last 1,000,000:   18s.  Last read position: chr5:71,740,674
INFO	2017-10-04 09:44:07	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:44:30	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:09:55s.  Time for last 1,000,000:   22s.  Last read position: chr5:102,821,296
INFO	2017-10-04 09:44:30	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:44:48	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:10:13s.  Time for last 1,000,000:   18s.  Last read position: chr5:133,618,052
INFO	2017-10-04 09:44:48	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:45:04	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:10:29s.  Time for last 1,000,000:   16s.  Last read position: chr5:155,837,861
INFO	2017-10-04 09:45:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:45:23	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:10:48s.  Time for last 1,000,000:   18s.  Last read position: chr5:180,641,852
INFO	2017-10-04 09:45:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:45:44	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:11:10s.  Time for last 1,000,000:   21s.  Last read position: chr6:23,923,501
INFO	2017-10-04 09:45:44	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:46:02	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:11:27s.  Time for last 1,000,000:   17s.  Last read position: chr6:42,369,202
INFO	2017-10-04 09:46:02	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:46:22	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:11:47s.  Time for last 1,000,000:   19s.  Last read position: chr6:73,809,254
INFO	2017-10-04 09:46:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:46:46	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:12:11s.  Time for last 1,000,000:   24s.  Last read position: chr6:106,516,789
INFO	2017-10-04 09:46:46	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:47:05	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:12:30s.  Time for last 1,000,000:   18s.  Last read position: chr6:135,410,887
INFO	2017-10-04 09:47:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:47:22	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:12:47s.  Time for last 1,000,000:   17s.  Last read position: chr6:160,879,928
INFO	2017-10-04 09:47:22	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:47:43	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:13:08s.  Time for last 1,000,000:   20s.  Last read position: chr7:12,968,906
INFO	2017-10-04 09:47:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:48:00	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:13:26s.  Time for last 1,000,000:   17s.  Last read position: chr7:40,148,953
INFO	2017-10-04 09:48:00	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:48:17	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:13:42s.  Time for last 1,000,000:   16s.  Last read position: chr7:73,750,307
INFO	2017-10-04 09:48:17	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:48:35	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:14:00s.  Time for last 1,000,000:   18s.  Last read position: chr7:101,216,429
INFO	2017-10-04 09:48:35	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:49:00	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:14:25s.  Time for last 1,000,000:   24s.  Last read position: chr7:130,729,062
INFO	2017-10-04 09:49:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:49:17	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:14:42s.  Time for last 1,000,000:   17s.  Last read position: chr7:156,503,938
INFO	2017-10-04 09:49:17	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:49:36	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:15:01s.  Time for last 1,000,000:   19s.  Last read position: chr8:24,368,609
INFO	2017-10-04 09:49:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:49:56	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:15:22s.  Time for last 1,000,000:   20s.  Last read position: chr8:52,797,527
INFO	2017-10-04 09:49:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:50:14	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:15:39s.  Time for last 1,000,000:   17s.  Last read position: chr8:83,424,909
INFO	2017-10-04 09:50:14	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:50:32	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:15:57s.  Time for last 1,000,000:   18s.  Last read position: chr8:113,200,121
INFO	2017-10-04 09:50:32	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 09:50:50	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:16:16s.  Time for last 1,000,000:   18s.  Last read position: chr8:139,698,287
INFO	2017-10-04 09:50:50	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:51:15	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:16:40s.  Time for last 1,000,000:   24s.  Last read position: chr9:18,100,068
INFO	2017-10-04 09:51:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:51:33	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:16:58s.  Time for last 1,000,000:   17s.  Last read position: chr9:73,909,102
INFO	2017-10-04 09:51:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:51:52	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:17:17s.  Time for last 1,000,000:   18s.  Last read position: chr9:100,208,502
INFO	2017-10-04 09:51:52	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:52:11	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:17:36s.  Time for last 1,000,000:   19s.  Last read position: chr9:126,033,989
INFO	2017-10-04 09:52:11	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:52:27	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:17:53s.  Time for last 1,000,000:   16s.  Last read position: chr10:2,250,064
INFO	2017-10-04 09:52:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:52:46	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:18:11s.  Time for last 1,000,000:   18s.  Last read position: chr10:28,423,896
INFO	2017-10-04 09:52:46	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:53:04	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:18:29s.  Time for last 1,000,000:   18s.  Last read position: chr10:61,507,945
INFO	2017-10-04 09:53:04	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:53:27	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:18:53s.  Time for last 1,000,000:   23s.  Last read position: chr10:85,465,750
INFO	2017-10-04 09:53:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:53:44	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:19:10s.  Time for last 1,000,000:   17s.  Last read position: chr10:109,788,749
INFO	2017-10-04 09:53:44	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:54:02	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:19:28s.  Time for last 1,000,000:   18s.  Last read position: chr10:132,760,228
INFO	2017-10-04 09:54:02	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:54:23	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:19:49s.  Time for last 1,000,000:   21s.  Last read position: chr11:18,588,558
INFO	2017-10-04 09:54:23	MarkDuplicates	Tracking 38 as yet unmatched pairs. 38 records in RAM.
INFO	2017-10-04 09:54:42	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:20:07s.  Time for last 1,000,000:   18s.  Last read position: chr11:46,854,245
INFO	2017-10-04 09:54:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:55:02	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:20:27s.  Time for last 1,000,000:   20s.  Last read position: chr11:68,651,866
INFO	2017-10-04 09:55:02	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-04 09:55:21	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:20:46s.  Time for last 1,000,000:   19s.  Last read position: chr11:94,207,605
INFO	2017-10-04 09:55:21	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:55:46	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:21:11s.  Time for last 1,000,000:   25s.  Last read position: chr11:119,725,203
INFO	2017-10-04 09:55:46	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:56:04	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:21:29s.  Time for last 1,000,000:   17s.  Last read position: chr12:6,735,807
INFO	2017-10-04 09:56:04	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 09:56:22	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:21:47s.  Time for last 1,000,000:   18s.  Last read position: chr12:33,839,515
INFO	2017-10-04 09:56:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 09:56:43	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:22:08s.  Time for last 1,000,000:   21s.  Last read position: chr12:57,563,496
INFO	2017-10-04 09:56:43	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:57:00	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:22:25s.  Time for last 1,000,000:   16s.  Last read position: chr12:88,854,277
INFO	2017-10-04 09:57:00	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:57:19	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:22:44s.  Time for last 1,000,000:   18s.  Last read position: chr12:113,299,753
INFO	2017-10-04 09:57:19	MarkDuplicates	Tracking 16 as yet unmatched pairs. 16 records in RAM.
INFO	2017-10-04 09:57:37	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:23:02s.  Time for last 1,000,000:   18s.  Last read position: chr13:20,189,959
INFO	2017-10-04 09:57:37	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 09:58:02	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:23:27s.  Time for last 1,000,000:   24s.  Last read position: chr13:46,797,563
INFO	2017-10-04 09:58:02	MarkDuplicates	Tracking 20 as yet unmatched pairs. 20 records in RAM.
INFO	2017-10-04 09:58:23	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:23:48s.  Time for last 1,000,000:   21s.  Last read position: chr13:79,869,438
INFO	2017-10-04 09:58:23	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:58:42	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:24:07s.  Time for last 1,000,000:   19s.  Last read position: chr13:110,908,763
INFO	2017-10-04 09:58:42	MarkDuplicates	Tracking 24 as yet unmatched pairs. 24 records in RAM.
INFO	2017-10-04 09:59:04	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:24:29s.  Time for last 1,000,000:   21s.  Last read position: chr14:42,904,496
INFO	2017-10-04 09:59:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 09:59:22	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:24:47s.  Time for last 1,000,000:   18s.  Last read position: chr14:69,291,364
INFO	2017-10-04 09:59:22	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:59:40	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:25:05s.  Time for last 1,000,000:   17s.  Last read position: chr14:93,967,853
INFO	2017-10-04 09:59:40	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 09:59:58	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:25:24s.  Time for last 1,000,000:   18s.  Last read position: chr15:32,342,184
INFO	2017-10-04 09:59:58	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 10:00:20	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:25:45s.  Time for last 1,000,000:   21s.  Last read position: chr15:59,019,904
INFO	2017-10-04 10:00:20	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 10:00:38	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:26:03s.  Time for last 1,000,000:   18s.  Last read position: chr15:80,616,086
INFO	2017-10-04 10:00:38	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-04 10:00:56	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:26:21s.  Time for last 1,000,000:   18s.  Last read position: chr16:1,428,377
INFO	2017-10-04 10:00:56	MarkDuplicates	Tracking 32 as yet unmatched pairs. 32 records in RAM.
INFO	2017-10-04 10:01:15	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:26:40s.  Time for last 1,000,000:   18s.  Last read position: chr16:24,308,028
INFO	2017-10-04 10:01:15	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 10:01:33	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:26:58s.  Time for last 1,000,000:   18s.  Last read position: chr16:59,303,284
INFO	2017-10-04 10:01:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:01:53	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:27:19s.  Time for last 1,000,000:   20s.  Last read position: chr16:83,405,672
INFO	2017-10-04 10:01:53	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:02:16	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:27:41s.  Time for last 1,000,000:   22s.  Last read position: chr17:8,236,925
INFO	2017-10-04 10:02:16	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:02:34	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:27:59s.  Time for last 1,000,000:   17s.  Last read position: chr17:35,942,078
INFO	2017-10-04 10:02:34	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 10:02:56	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:28:21s.  Time for last 1,000,000:   22s.  Last read position: chr17:52,701,768
INFO	2017-10-04 10:02:56	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 10:03:14	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:28:39s.  Time for last 1,000,000:   18s.  Last read position: chr17:75,847,040
INFO	2017-10-04 10:03:14	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-04 10:03:34	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:28:59s.  Time for last 1,000,000:   19s.  Last read position: chr18:10,072,834
INFO	2017-10-04 10:03:34	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:03:52	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:29:17s.  Time for last 1,000,000:   18s.  Last read position: chr18:44,295,486
INFO	2017-10-04 10:03:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 10:04:11	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:29:36s.  Time for last 1,000,000:   18s.  Last read position: chr18:71,073,882
INFO	2017-10-04 10:04:11	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:04:34	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:29:59s.  Time for last 1,000,000:   22s.  Last read position: chr19:6,737,599
INFO	2017-10-04 10:04:34	MarkDuplicates	Tracking 90 as yet unmatched pairs. 90 records in RAM.
INFO	2017-10-04 10:04:52	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:30:17s.  Time for last 1,000,000:   18s.  Last read position: chr19:21,396,972
INFO	2017-10-04 10:04:52	MarkDuplicates	Tracking 24 as yet unmatched pairs. 24 records in RAM.
INFO	2017-10-04 10:05:10	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:30:35s.  Time for last 1,000,000:   18s.  Last read position: chr19:44,940,234
INFO	2017-10-04 10:05:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 10:05:29	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:30:54s.  Time for last 1,000,000:   19s.  Last read position: chr20:1,422,482
INFO	2017-10-04 10:05:29	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 10:05:48	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:31:13s.  Time for last 1,000,000:   18s.  Last read position: chr20:29,878,484
INFO	2017-10-04 10:05:48	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 10:06:06	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:31:31s.  Time for last 1,000,000:   18s.  Last read position: chr20:50,572,957
INFO	2017-10-04 10:06:06	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 10:06:25	MarkDuplicates	Read   103,000,000 records.  Elapsed time: 00:31:50s.  Time for last 1,000,000:   18s.  Last read position: chr21:22,831,463
INFO	2017-10-04 10:06:25	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:06:49	MarkDuplicates	Read   104,000,000 records.  Elapsed time: 00:32:15s.  Time for last 1,000,000:   24s.  Last read position: chr21:45,978,333
INFO	2017-10-04 10:06:49	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 10:07:07	MarkDuplicates	Read   105,000,000 records.  Elapsed time: 00:32:32s.  Time for last 1,000,000:   17s.  Last read position: chr22:36,431,874
INFO	2017-10-04 10:07:07	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 10:07:27	MarkDuplicates	Read   106,000,000 records.  Elapsed time: 00:32:52s.  Time for last 1,000,000:   19s.  Last read position: chrX:1,525,074
INFO	2017-10-04 10:07:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 10:07:44	MarkDuplicates	Read   107,000,000 records.  Elapsed time: 00:33:09s.  Time for last 1,000,000:   17s.  Last read position: chrX:35,345,461
INFO	2017-10-04 10:07:44	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:08:03	MarkDuplicates	Read   108,000,000 records.  Elapsed time: 00:33:28s.  Time for last 1,000,000:   19s.  Last read position: chrX:75,797,394
INFO	2017-10-04 10:08:03	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 10:08:21	MarkDuplicates	Read   109,000,000 records.  Elapsed time: 00:33:47s.  Time for last 1,000,000:   18s.  Last read position: chrX:118,663,134
INFO	2017-10-04 10:08:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 10:08:39	MarkDuplicates	Read   110,000,000 records.  Elapsed time: 00:34:04s.  Time for last 1,000,000:   17s.  Last read position: chrX:153,794,525
INFO	2017-10-04 10:08:39	MarkDuplicates	Tracking 50 as yet unmatched pairs. 50 records in RAM.
INFO	2017-10-04 10:08:42	MarkDuplicates	Read 110194910 records. 0 pairs never matched.
INFO	2017-10-04 10:08:48	MarkDuplicates	After buildSortedReadEndLists freeMemory: 945387112; totalMemory: 955252736; maxMemory: 955252736
INFO	2017-10-04 10:08:48	MarkDuplicates	Will retain up to 29851648 duplicate indices before spilling to disk.
INFO	2017-10-04 10:08:48	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 10:09:13	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 10:09:52	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 10:09:52	MarkDuplicates	After generateDuplicateIndexes freeMemory: 719123728; totalMemory: 967835648; maxMemory: 967835648
INFO	2017-10-04 10:09:52	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 10:09:52	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 10:09:52	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 10:11:55	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:02s.  Time for last 10,000,000:  122s.  Last read position: chr2:11,559,820
INFO	2017-10-04 10:14:05	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:12s.  Time for last 10,000,000:  130s.  Last read position: chr3:42,709,507
INFO	2017-10-04 10:16:19	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:27s.  Time for last 10,000,000:  134s.  Last read position: chr4:135,212,556
INFO	2017-10-04 10:18:42	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:50s.  Time for last 10,000,000:  143s.  Last read position: chr6:42,369,202
INFO	2017-10-04 10:21:07	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:11:14s.  Time for last 10,000,000:  144s.  Last read position: chr7:156,503,938
INFO	2017-10-04 10:23:34	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:13:41s.  Time for last 10,000,000:  147s.  Last read position: chr10:2,250,064
INFO	2017-10-04 10:25:58	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:16:05s.  Time for last 10,000,000:  143s.  Last read position: chr11:119,725,203
INFO	2017-10-04 10:28:23	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:18:30s.  Time for last 10,000,000:  145s.  Last read position: chr14:42,904,496
INFO	2017-10-04 10:30:45	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:20:52s.  Time for last 10,000,000:  141s.  Last read position: chr17:8,236,925
INFO	2017-10-04 10:33:06	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:23:13s.  Time for last 10,000,000:  140s.  Last read position: chr20:1,422,482
INFO	2017-10-04 10:35:29	MarkDuplicates	Written   110,000,000 records.  Elapsed time: 00:25:36s.  Time for last 10,000,000:  143s.  Last read position: chrX:153,794,525
INFO	2017-10-04 10:35:32	MarkDuplicates	Before output close freeMemory: 962052216; totalMemory: 972554240; maxMemory: 972554240
INFO	2017-10-04 10:35:32	MarkDuplicates	After output close freeMemory: 962038648; totalMemory: 972554240; maxMemory: 972554240
[Wed Oct 04 10:35:32 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 60.98 minutes.
Runtime.totalMemory()=972554240
</pre>
Process 10468 returned: (0). Elapsed: 1:01:37.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

<pre>
</pre>
Process 12985 returned: (0). Elapsed: 0:06:33. Peak memory: (Process: 0.022GB; Pipeline: 0.759GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 13129 returned: (0). Elapsed: 0:17:34. Peak memory: (Process: 0.002GB; Pipeline: 0.759GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 11:00:16: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = breast_epithelium_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 11:00:16: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 11:00:16: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 11:00:19:  1000000 
INFO  @ Wed, 04 Oct 2017 11:00:21:  2000000 
INFO  @ Wed, 04 Oct 2017 11:00:24:  3000000 
INFO  @ Wed, 04 Oct 2017 11:00:26:  4000000 
INFO  @ Wed, 04 Oct 2017 11:00:29:  5000000 
INFO  @ Wed, 04 Oct 2017 11:00:31:  6000000 
INFO  @ Wed, 04 Oct 2017 11:00:34:  7000000 
INFO  @ Wed, 04 Oct 2017 11:00:37:  8000000 
INFO  @ Wed, 04 Oct 2017 11:00:39:  9000000 
INFO  @ Wed, 04 Oct 2017 11:00:42:  10000000 
INFO  @ Wed, 04 Oct 2017 11:00:44:  11000000 
INFO  @ Wed, 04 Oct 2017 11:00:47:  12000000 
INFO  @ Wed, 04 Oct 2017 11:00:50:  13000000 
INFO  @ Wed, 04 Oct 2017 11:00:52:  14000000 
INFO  @ Wed, 04 Oct 2017 11:00:55:  15000000 
INFO  @ Wed, 04 Oct 2017 11:00:57:  16000000 
INFO  @ Wed, 04 Oct 2017 11:01:00:  17000000 
INFO  @ Wed, 04 Oct 2017 11:01:02:  18000000 
INFO  @ Wed, 04 Oct 2017 11:01:05:  19000000 
INFO  @ Wed, 04 Oct 2017 11:01:07:  20000000 
INFO  @ Wed, 04 Oct 2017 11:01:09:  21000000 
INFO  @ Wed, 04 Oct 2017 11:01:12:  22000000 
INFO  @ Wed, 04 Oct 2017 11:01:14:  23000000 
INFO  @ Wed, 04 Oct 2017 11:01:17:  24000000 
INFO  @ Wed, 04 Oct 2017 11:01:19:  25000000 
INFO  @ Wed, 04 Oct 2017 11:01:22:  26000000 
INFO  @ Wed, 04 Oct 2017 11:01:24:  27000000 
INFO  @ Wed, 04 Oct 2017 11:01:27:  28000000 
INFO  @ Wed, 04 Oct 2017 11:01:30:  29000000 
INFO  @ Wed, 04 Oct 2017 11:01:32:  30000000 
INFO  @ Wed, 04 Oct 2017 11:01:34:  31000000 
INFO  @ Wed, 04 Oct 2017 11:01:37:  32000000 
INFO  @ Wed, 04 Oct 2017 11:01:39:  33000000 
INFO  @ Wed, 04 Oct 2017 11:01:42:  34000000 
INFO  @ Wed, 04 Oct 2017 11:01:45:  35000000 
INFO  @ Wed, 04 Oct 2017 11:01:48:  36000000 
INFO  @ Wed, 04 Oct 2017 11:01:50:  37000000 
INFO  @ Wed, 04 Oct 2017 11:01:53:  38000000 
INFO  @ Wed, 04 Oct 2017 11:01:55:  39000000 
INFO  @ Wed, 04 Oct 2017 11:01:58:  40000000 
INFO  @ Wed, 04 Oct 2017 11:02:00:  41000000 
INFO  @ Wed, 04 Oct 2017 11:02:03:  42000000 
INFO  @ Wed, 04 Oct 2017 11:02:05:  43000000 
INFO  @ Wed, 04 Oct 2017 11:02:08:  44000000 
INFO  @ Wed, 04 Oct 2017 11:02:10:  45000000 
INFO  @ Wed, 04 Oct 2017 11:02:13:  46000000 
INFO  @ Wed, 04 Oct 2017 11:02:16:  47000000 
INFO  @ Wed, 04 Oct 2017 11:02:18:  48000000 
INFO  @ Wed, 04 Oct 2017 11:02:21:  49000000 
INFO  @ Wed, 04 Oct 2017 11:02:24:  50000000 
INFO  @ Wed, 04 Oct 2017 11:02:27:  51000000 
INFO  @ Wed, 04 Oct 2017 11:02:30:  52000000 
INFO  @ Wed, 04 Oct 2017 11:02:32:  53000000 
INFO  @ Wed, 04 Oct 2017 11:02:35:  54000000 
INFO  @ Wed, 04 Oct 2017 11:02:38:  55000000 
INFO  @ Wed, 04 Oct 2017 11:02:40:  56000000 
INFO  @ Wed, 04 Oct 2017 11:02:43:  57000000 
INFO  @ Wed, 04 Oct 2017 11:02:46:  58000000 
INFO  @ Wed, 04 Oct 2017 11:02:48:  59000000 
INFO  @ Wed, 04 Oct 2017 11:02:51:  60000000 
INFO  @ Wed, 04 Oct 2017 11:02:53:  61000000 
INFO  @ Wed, 04 Oct 2017 11:02:56:  62000000 
INFO  @ Wed, 04 Oct 2017 11:02:59:  63000000 
INFO  @ Wed, 04 Oct 2017 11:03:02:  64000000 
INFO  @ Wed, 04 Oct 2017 11:03:04:  65000000 
INFO  @ Wed, 04 Oct 2017 11:03:07:  66000000 
INFO  @ Wed, 04 Oct 2017 11:03:10:  67000000 
INFO  @ Wed, 04 Oct 2017 11:03:13:  68000000 
INFO  @ Wed, 04 Oct 2017 11:03:15:  69000000 
INFO  @ Wed, 04 Oct 2017 11:03:18:  70000000 
INFO  @ Wed, 04 Oct 2017 11:03:21:  71000000 
INFO  @ Wed, 04 Oct 2017 11:03:24:  72000000 
INFO  @ Wed, 04 Oct 2017 11:03:27:  73000000 
INFO  @ Wed, 04 Oct 2017 11:03:29:  74000000 
INFO  @ Wed, 04 Oct 2017 11:03:32:  75000000 
INFO  @ Wed, 04 Oct 2017 11:03:35:  76000000 
INFO  @ Wed, 04 Oct 2017 11:03:38:  77000000 
INFO  @ Wed, 04 Oct 2017 11:03:40:  78000000 
INFO  @ Wed, 04 Oct 2017 11:03:43:  79000000 
INFO  @ Wed, 04 Oct 2017 11:03:45:  80000000 
INFO  @ Wed, 04 Oct 2017 11:03:48:  81000000 
INFO  @ Wed, 04 Oct 2017 11:03:51:  82000000 
INFO  @ Wed, 04 Oct 2017 11:03:53:  83000000 
INFO  @ Wed, 04 Oct 2017 11:03:56:  84000000 
INFO  @ Wed, 04 Oct 2017 11:03:58:  85000000 
INFO  @ Wed, 04 Oct 2017 11:04:01:  86000000 
INFO  @ Wed, 04 Oct 2017 11:04:03:  87000000 
INFO  @ Wed, 04 Oct 2017 11:04:06:  88000000 
INFO  @ Wed, 04 Oct 2017 11:04:08:  89000000 
INFO  @ Wed, 04 Oct 2017 11:04:11:  90000000 
INFO  @ Wed, 04 Oct 2017 11:04:14:  91000000 
INFO  @ Wed, 04 Oct 2017 11:04:16:  92000000 
INFO  @ Wed, 04 Oct 2017 11:04:19:  93000000 
INFO  @ Wed, 04 Oct 2017 11:04:21:  94000000 
INFO  @ Wed, 04 Oct 2017 11:04:24:  95000000 
INFO  @ Wed, 04 Oct 2017 11:04:26:  96000000 
INFO  @ Wed, 04 Oct 2017 11:04:28:  97000000 
INFO  @ Wed, 04 Oct 2017 11:04:31:  98000000 
INFO  @ Wed, 04 Oct 2017 11:04:33:  99000000 
INFO  @ Wed, 04 Oct 2017 11:04:35:  100000000 
INFO  @ Wed, 04 Oct 2017 11:04:38:  101000000 
INFO  @ Wed, 04 Oct 2017 11:04:40:  102000000 
INFO  @ Wed, 04 Oct 2017 11:04:43:  103000000 
INFO  @ Wed, 04 Oct 2017 11:04:45:  104000000 
INFO  @ Wed, 04 Oct 2017 11:04:48:  105000000 
INFO  @ Wed, 04 Oct 2017 11:04:50:  106000000 
INFO  @ Wed, 04 Oct 2017 11:04:53:  107000000 
INFO  @ Wed, 04 Oct 2017 11:04:55:  108000000 
INFO  @ Wed, 04 Oct 2017 11:04:58:  109000000 
INFO  @ Wed, 04 Oct 2017 11:05:00:  110000000 
INFO  @ Wed, 04 Oct 2017 11:05:05: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 11:05:05: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 11:05:05: #1  total tags in treatment: 110194910 
INFO  @ Wed, 04 Oct 2017 11:05:05: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 11:05:05: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 11:05:11: #1  tags after filtering in treatment: 98197095 
INFO  @ Wed, 04 Oct 2017 11:05:11: #1  Redundant rate of treatment: 0.11 
INFO  @ Wed, 04 Oct 2017 11:05:11: #1 finished! 
INFO  @ Wed, 04 Oct 2017 11:05:11: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 11:05:11: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 11:05:11: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 11:05:11: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 11:05:11: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 11:11:23: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 11:15:44: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 11:15:45: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 11:15:45: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 11:15:46: Done! 
</pre>
Process 14124 returned: (0). Elapsed: 0:15:34. Peak memory: (Process: 1.217GB; Pipeline: 0.759GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 11:15:51 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 11:15:51 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 11:15:51	MarkDuplicates	Start of doWork freeMemory: 503974352; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 11:15:51	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 11:15:51	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 11:16:00	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:08s.  Time for last 1,000,000:    8s.  Last read position: chr1:23,838,691
INFO	2017-10-04 11:16:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:16:08	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:16s.  Time for last 1,000,000:    8s.  Last read position: chr1:47,945,375
INFO	2017-10-04 11:16:08	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:16:19	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:27s.  Time for last 1,000,000:   10s.  Last read position: chr1:76,418,331
INFO	2017-10-04 11:16:19	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:16:29	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:37s.  Time for last 1,000,000:   10s.  Last read position: chr1:104,711,554
INFO	2017-10-04 11:16:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:16:38	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:46s.  Time for last 1,000,000:    9s.  Last read position: chr1:157,004,390
INFO	2017-10-04 11:16:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:16:47	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:00:55s.  Time for last 1,000,000:    8s.  Last read position: chr1:185,180,835
INFO	2017-10-04 11:16:47	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:17:04	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:13s.  Time for last 1,000,000:   17s.  Last read position: chr1:211,168,245
INFO	2017-10-04 11:17:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:17:13	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:21s.  Time for last 1,000,000:    8s.  Last read position: chr1:237,557,069
INFO	2017-10-04 11:17:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:17:21	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:29s.  Time for last 1,000,000:    8s.  Last read position: chr2:15,146,994
INFO	2017-10-04 11:17:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:17:30	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:39s.  Time for last 1,000,000:    9s.  Last read position: chr2:41,860,045
INFO	2017-10-04 11:17:30	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:17:42	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:50s.  Time for last 1,000,000:   11s.  Last read position: chr2:68,824,725
INFO	2017-10-04 11:17:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:17:51	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:01:59s.  Time for last 1,000,000:    8s.  Last read position: chr2:101,062,152
INFO	2017-10-04 11:17:51	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:18:01	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:10s.  Time for last 1,000,000:   10s.  Last read position: chr2:127,832,332
INFO	2017-10-04 11:18:01	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:18:16	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:24s.  Time for last 1,000,000:   14s.  Last read position: chr2:156,341,785
INFO	2017-10-04 11:18:16	MarkDuplicates	Tracking 42 as yet unmatched pairs. 42 records in RAM.
INFO	2017-10-04 11:18:24	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:02:32s.  Time for last 1,000,000:    8s.  Last read position: chr2:183,556,699
INFO	2017-10-04 11:18:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:18:33	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:02:42s.  Time for last 1,000,000:    9s.  Last read position: chr2:211,861,579
INFO	2017-10-04 11:18:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:18:42	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:02:50s.  Time for last 1,000,000:    8s.  Last read position: chr2:237,594,916
INFO	2017-10-04 11:18:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:19:02	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:03:10s.  Time for last 1,000,000:   19s.  Last read position: chr3:19,783,454
INFO	2017-10-04 11:19:02	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:19:18	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:03:26s.  Time for last 1,000,000:   16s.  Last read position: chr3:46,696,076
INFO	2017-10-04 11:19:18	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 11:19:37	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:03:45s.  Time for last 1,000,000:   18s.  Last read position: chr3:71,766,120
INFO	2017-10-04 11:19:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:19:57	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:04:05s.  Time for last 1,000,000:   20s.  Last read position: chr3:101,680,460
INFO	2017-10-04 11:19:57	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:20:15	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:04:23s.  Time for last 1,000,000:   17s.  Last read position: chr3:128,083,391
INFO	2017-10-04 11:20:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:20:33	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:04:41s.  Time for last 1,000,000:   18s.  Last read position: chr3:154,316,317
INFO	2017-10-04 11:20:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:20:50	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:04:58s.  Time for last 1,000,000:   16s.  Last read position: chr3:181,594,513
INFO	2017-10-04 11:20:50	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 11:21:09	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:05:17s.  Time for last 1,000,000:   19s.  Last read position: chr4:7,489,140
INFO	2017-10-04 11:21:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:21:27	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:05:35s.  Time for last 1,000,000:   17s.  Last read position: chr4:32,651,221
INFO	2017-10-04 11:21:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:21:45	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:05:53s.  Time for last 1,000,000:   18s.  Last read position: chr4:60,176,794
INFO	2017-10-04 11:21:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:22:07	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:06:15s.  Time for last 1,000,000:   22s.  Last read position: chr4:85,681,609
INFO	2017-10-04 11:22:07	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:22:24	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:06:32s.  Time for last 1,000,000:   17s.  Last read position: chr4:111,189,881
INFO	2017-10-04 11:22:24	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:22:41	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:06:49s.  Time for last 1,000,000:   17s.  Last read position: chr4:136,984,034
INFO	2017-10-04 11:22:41	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 11:22:59	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:07:07s.  Time for last 1,000,000:   17s.  Last read position: chr4:161,945,411
INFO	2017-10-04 11:22:59	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:23:17	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:07:25s.  Time for last 1,000,000:   18s.  Last read position: chr4:185,576,124
INFO	2017-10-04 11:23:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:23:34	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:07:42s.  Time for last 1,000,000:   17s.  Last read position: chr5:19,903,385
INFO	2017-10-04 11:23:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:23:52	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:08:00s.  Time for last 1,000,000:   17s.  Last read position: chr5:50,861,293
INFO	2017-10-04 11:23:52	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:24:15	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:08:23s.  Time for last 1,000,000:   23s.  Last read position: chr5:79,843,023
INFO	2017-10-04 11:24:15	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:24:31	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:08:39s.  Time for last 1,000,000:   15s.  Last read position: chr5:107,010,118
INFO	2017-10-04 11:24:31	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:24:48	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:08:57s.  Time for last 1,000,000:   17s.  Last read position: chr5:134,031,635
INFO	2017-10-04 11:24:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:25:08	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:09:16s.  Time for last 1,000,000:   19s.  Last read position: chr5:158,995,394
INFO	2017-10-04 11:25:08	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:25:26	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:09:34s.  Time for last 1,000,000:   18s.  Last read position: chr6:2,635,273
INFO	2017-10-04 11:25:26	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:25:45	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:09:53s.  Time for last 1,000,000:   18s.  Last read position: chr6:29,152,549
INFO	2017-10-04 11:25:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:26:13	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:10:21s.  Time for last 1,000,000:   28s.  Last read position: chr6:52,516,016
INFO	2017-10-04 11:26:13	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:26:37	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:10:45s.  Time for last 1,000,000:   23s.  Last read position: chr6:82,090,829
INFO	2017-10-04 11:26:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:26:56	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:11:04s.  Time for last 1,000,000:   18s.  Last read position: chr6:108,101,564
INFO	2017-10-04 11:26:56	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:27:11	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:11:19s.  Time for last 1,000,000:   15s.  Last read position: chr6:134,619,620
INFO	2017-10-04 11:27:11	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:27:31	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:11:39s.  Time for last 1,000,000:   19s.  Last read position: chr6:160,578,445
INFO	2017-10-04 11:27:31	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:27:48	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:11:56s.  Time for last 1,000,000:   16s.  Last read position: chr7:14,927,965
INFO	2017-10-04 11:27:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:28:06	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:12:14s.  Time for last 1,000,000:   17s.  Last read position: chr7:41,588,172
INFO	2017-10-04 11:28:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:28:23	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:12:31s.  Time for last 1,000,000:   17s.  Last read position: chr7:74,499,248
INFO	2017-10-04 11:28:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:28:44	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:12:52s.  Time for last 1,000,000:   20s.  Last read position: chr7:102,927,059
INFO	2017-10-04 11:28:44	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:28:53	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:13:01s.  Time for last 1,000,000:    8s.  Last read position: chr7:131,047,531
INFO	2017-10-04 11:28:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:29:02	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:13:10s.  Time for last 1,000,000:    9s.  Last read position: chr7:158,026,269
INFO	2017-10-04 11:29:02	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:29:15	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:13:23s.  Time for last 1,000,000:   12s.  Last read position: chr8:26,263,572
INFO	2017-10-04 11:29:15	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:29:24	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:13:33s.  Time for last 1,000,000:    9s.  Last read position: chr8:54,709,880
INFO	2017-10-04 11:29:24	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:29:33	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:13:42s.  Time for last 1,000,000:    8s.  Last read position: chr8:81,000,181
INFO	2017-10-04 11:29:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:29:42	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:13:51s.  Time for last 1,000,000:    9s.  Last read position: chr8:108,291,492
INFO	2017-10-04 11:29:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:29:59	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:14:07s.  Time for last 1,000,000:   16s.  Last read position: chr8:133,904,637
INFO	2017-10-04 11:29:59	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:30:08	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:14:16s.  Time for last 1,000,000:    9s.  Last read position: chr9:12,792,802
INFO	2017-10-04 11:30:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:30:16	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:14:24s.  Time for last 1,000,000:    8s.  Last read position: chr9:42,297,511
INFO	2017-10-04 11:30:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:30:30	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:14:38s.  Time for last 1,000,000:   13s.  Last read position: chr9:95,245,460
INFO	2017-10-04 11:30:30	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:30:38	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:14:46s.  Time for last 1,000,000:    8s.  Last read position: chr9:121,700,231
INFO	2017-10-04 11:30:38	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 11:30:45	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:14:54s.  Time for last 1,000,000:    7s.  Last read position: chr10:5,713,140
INFO	2017-10-04 11:30:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:31:25	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:15:33s.  Time for last 1,000,000:   39s.  Last read position: chr10:34,159,448
INFO	2017-10-04 11:31:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:31:38	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:15:46s.  Time for last 1,000,000:   13s.  Last read position: chr10:66,833,961
INFO	2017-10-04 11:31:38	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:31:48	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:15:56s.  Time for last 1,000,000:    9s.  Last read position: chr10:93,969,152
INFO	2017-10-04 11:31:48	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:31:57	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:16:06s.  Time for last 1,000,000:    9s.  Last read position: chr10:120,228,395
INFO	2017-10-04 11:31:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:32:09	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:16:17s.  Time for last 1,000,000:   11s.  Last read position: chr11:10,454,007
INFO	2017-10-04 11:32:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:32:18	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:16:26s.  Time for last 1,000,000:    8s.  Last read position: chr11:35,390,279
INFO	2017-10-04 11:32:18	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:32:27	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:16:35s.  Time for last 1,000,000:    8s.  Last read position: chr11:64,551,042
INFO	2017-10-04 11:32:27	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:32:34	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:16:42s.  Time for last 1,000,000:    7s.  Last read position: chr11:87,929,377
INFO	2017-10-04 11:32:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:32:48	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:16:56s.  Time for last 1,000,000:   13s.  Last read position: chr11:115,059,672
INFO	2017-10-04 11:32:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:32:55	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:17:03s.  Time for last 1,000,000:    7s.  Last read position: chr12:4,167,016
INFO	2017-10-04 11:32:55	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:33:04	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:17:12s.  Time for last 1,000,000:    9s.  Last read position: chr12:31,365,879
INFO	2017-10-04 11:33:04	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:33:14	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:17:23s.  Time for last 1,000,000:   10s.  Last read position: chr12:59,742,478
INFO	2017-10-04 11:33:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:33:24	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:17:32s.  Time for last 1,000,000:    9s.  Last read position: chr12:88,143,377
INFO	2017-10-04 11:33:24	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:33:31	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:17:39s.  Time for last 1,000,000:    7s.  Last read position: chr12:115,541,354
INFO	2017-10-04 11:33:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:33:39	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:17:47s.  Time for last 1,000,000:    7s.  Last read position: chr13:26,816,952
INFO	2017-10-04 11:33:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:33:54	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:18:02s.  Time for last 1,000,000:   14s.  Last read position: chr13:54,993,096
INFO	2017-10-04 11:33:54	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:34:02	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:18:10s.  Time for last 1,000,000:    8s.  Last read position: chr13:83,265,802
INFO	2017-10-04 11:34:02	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:34:10	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:18:18s.  Time for last 1,000,000:    7s.  Last read position: chr13:109,969,301
INFO	2017-10-04 11:34:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:34:23	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:18:31s.  Time for last 1,000,000:   13s.  Last read position: chr14:42,099,123
INFO	2017-10-04 11:34:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:34:32	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:18:40s.  Time for last 1,000,000:    8s.  Last read position: chr14:70,044,016
INFO	2017-10-04 11:34:32	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:34:41	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:18:49s.  Time for last 1,000,000:    9s.  Last read position: chr14:96,475,562
INFO	2017-10-04 11:34:41	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:34:51	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:18:59s.  Time for last 1,000,000:    9s.  Last read position: chr15:40,191,302
INFO	2017-10-04 11:34:51	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:35:05	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:19:13s.  Time for last 1,000,000:   13s.  Last read position: chr15:68,818,311
INFO	2017-10-04 11:35:05	MarkDuplicates	Tracking 40 as yet unmatched pairs. 40 records in RAM.
INFO	2017-10-04 11:35:13	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:19:21s.  Time for last 1,000,000:    8s.  Last read position: chr15:96,749,315
INFO	2017-10-04 11:35:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:35:22	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:19:30s.  Time for last 1,000,000:    9s.  Last read position: chr16:21,984,523
INFO	2017-10-04 11:35:22	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:35:35	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:19:43s.  Time for last 1,000,000:   12s.  Last read position: chr16:60,685,745
INFO	2017-10-04 11:35:35	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:35:44	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:19:52s.  Time for last 1,000,000:    9s.  Last read position: chr16:85,792,811
INFO	2017-10-04 11:35:44	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:35:58	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:20:06s.  Time for last 1,000,000:   13s.  Last read position: chr17:20,082,675
INFO	2017-10-04 11:35:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:36:12	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:20:20s.  Time for last 1,000,000:   14s.  Last read position: chr17:50,060,167
INFO	2017-10-04 11:36:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:36:21	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:20:29s.  Time for last 1,000,000:    9s.  Last read position: chr17:76,722,129
INFO	2017-10-04 11:36:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:36:29	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:20:38s.  Time for last 1,000,000:    8s.  Last read position: chr18:23,137,134
INFO	2017-10-04 11:36:29	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-04 11:36:39	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:20:47s.  Time for last 1,000,000:    9s.  Last read position: chr18:48,120,182
INFO	2017-10-04 11:36:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:36:49	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:20:57s.  Time for last 1,000,000:   10s.  Last read position: chr18:73,001,316
INFO	2017-10-04 11:36:49	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 11:36:59	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:21:07s.  Time for last 1,000,000:    9s.  Last read position: chr19:13,152,317
INFO	2017-10-04 11:36:59	MarkDuplicates	Tracking 24 as yet unmatched pairs. 24 records in RAM.
INFO	2017-10-04 11:37:06	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:21:15s.  Time for last 1,000,000:    7s.  Last read position: chr19:40,827,618
INFO	2017-10-04 11:37:06	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:37:20	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:21:28s.  Time for last 1,000,000:   13s.  Last read position: chr20:4,910,236
INFO	2017-10-04 11:37:20	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:37:27	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:21:35s.  Time for last 1,000,000:    7s.  Last read position: chr20:35,305,876
INFO	2017-10-04 11:37:27	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 11:37:36	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:21:44s.  Time for last 1,000,000:    8s.  Last read position: chr20:62,122,098
INFO	2017-10-04 11:37:36	MarkDuplicates	Tracking 82 as yet unmatched pairs. 82 records in RAM.
INFO	2017-10-04 11:37:44	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:21:52s.  Time for last 1,000,000:    8s.  Last read position: chr21:37,743,900
INFO	2017-10-04 11:37:44	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:37:54	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:22:02s.  Time for last 1,000,000:   10s.  Last read position: chr22:34,744,077
INFO	2017-10-04 11:37:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:38:02	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:22:10s.  Time for last 1,000,000:    7s.  Last read position: chrX:12,414,527
INFO	2017-10-04 11:38:02	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 11:38:10	MarkDuplicates	Read   103,000,000 records.  Elapsed time: 00:22:18s.  Time for last 1,000,000:    8s.  Last read position: chrX:70,609,694
INFO	2017-10-04 11:38:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:38:25	MarkDuplicates	Read   104,000,000 records.  Elapsed time: 00:22:33s.  Time for last 1,000,000:   14s.  Last read position: chrX:128,293,061
INFO	2017-10-04 11:38:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 11:38:32	MarkDuplicates	Read 104933666 records. 0 pairs never matched.
INFO	2017-10-04 11:38:34	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1018680256; totalMemory: 1028653056; maxMemory: 1028653056
INFO	2017-10-04 11:38:34	MarkDuplicates	Will retain up to 32145408 duplicate indices before spilling to disk.
INFO	2017-10-04 11:38:34	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 11:38:56	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 11:39:33	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 11:39:33	MarkDuplicates	After generateDuplicateIndexes freeMemory: 778448328; totalMemory: 1045430272; maxMemory: 1045430272
INFO	2017-10-04 11:39:33	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 11:39:33	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 11:39:33	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 11:41:30	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:01:56s.  Time for last 10,000,000:  116s.  Last read position: chr2:41,860,045
INFO	2017-10-04 11:43:35	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:01s.  Time for last 10,000,000:  125s.  Last read position: chr3:71,766,120
INFO	2017-10-04 11:45:44	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:10s.  Time for last 10,000,000:  129s.  Last read position: chr4:136,984,034
INFO	2017-10-04 11:47:49	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:15s.  Time for last 10,000,000:  124s.  Last read position: chr6:29,152,549
INFO	2017-10-04 11:49:49	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:10:16s.  Time for last 10,000,000:  120s.  Last read position: chr7:131,047,531
INFO	2017-10-04 11:52:07	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:12:33s.  Time for last 10,000,000:  137s.  Last read position: chr9:121,700,231
INFO	2017-10-04 11:54:24	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:14:51s.  Time for last 10,000,000:  137s.  Last read position: chr11:115,059,672
INFO	2017-10-04 11:56:44	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:17:10s.  Time for last 10,000,000:  139s.  Last read position: chr14:42,099,123
INFO	2017-10-04 11:59:00	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:19:27s.  Time for last 10,000,000:  136s.  Last read position: chr17:50,060,167
INFO	2017-10-04 12:01:16	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:21:42s.  Time for last 10,000,000:  135s.  Last read position: chr21:37,743,900
INFO	2017-10-04 12:02:24	MarkDuplicates	Before output close freeMemory: 1044959600; totalMemory: 1055391744; maxMemory: 1055391744
INFO	2017-10-04 12:02:24	MarkDuplicates	After output close freeMemory: 1044946032; totalMemory: 1055391744; maxMemory: 1055391744
[Wed Oct 04 12:02:24 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 46.55 minutes.
Runtime.totalMemory()=1055391744
</pre>
Process 15153 returned: (0). Elapsed: 0:46:36.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

<pre>
</pre>
Process 20058 returned: (0). Elapsed: 0:05:33. Peak memory: (Process: 0.021GB; Pipeline: 1.217GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 20151 returned: (0). Elapsed: 0:17:34. Peak memory: (Process: 0.002GB; Pipeline: 1.217GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_3.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 12:25:33: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_3.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = breast_epithelium_3.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 12:25:33: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 12:25:33: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 12:25:36:  1000000 
INFO  @ Wed, 04 Oct 2017 12:25:39:  2000000 
INFO  @ Wed, 04 Oct 2017 12:25:41:  3000000 
INFO  @ Wed, 04 Oct 2017 12:25:44:  4000000 
INFO  @ Wed, 04 Oct 2017 12:25:46:  5000000 
INFO  @ Wed, 04 Oct 2017 12:25:49:  6000000 
INFO  @ Wed, 04 Oct 2017 12:25:52:  7000000 
INFO  @ Wed, 04 Oct 2017 12:25:54:  8000000 
INFO  @ Wed, 04 Oct 2017 12:25:57:  9000000 
INFO  @ Wed, 04 Oct 2017 12:26:00:  10000000 
INFO  @ Wed, 04 Oct 2017 12:26:03:  11000000 
INFO  @ Wed, 04 Oct 2017 12:26:06:  12000000 
INFO  @ Wed, 04 Oct 2017 12:26:08:  13000000 
INFO  @ Wed, 04 Oct 2017 12:26:11:  14000000 
INFO  @ Wed, 04 Oct 2017 12:26:14:  15000000 
INFO  @ Wed, 04 Oct 2017 12:26:16:  16000000 
INFO  @ Wed, 04 Oct 2017 12:26:19:  17000000 
INFO  @ Wed, 04 Oct 2017 12:26:21:  18000000 
INFO  @ Wed, 04 Oct 2017 12:26:24:  19000000 
INFO  @ Wed, 04 Oct 2017 12:26:27:  20000000 
INFO  @ Wed, 04 Oct 2017 12:26:30:  21000000 
INFO  @ Wed, 04 Oct 2017 12:26:32:  22000000 
INFO  @ Wed, 04 Oct 2017 12:26:35:  23000000 
INFO  @ Wed, 04 Oct 2017 12:26:37:  24000000 
INFO  @ Wed, 04 Oct 2017 12:26:40:  25000000 
INFO  @ Wed, 04 Oct 2017 12:26:43:  26000000 
INFO  @ Wed, 04 Oct 2017 12:26:45:  27000000 
INFO  @ Wed, 04 Oct 2017 12:26:47:  28000000 
INFO  @ Wed, 04 Oct 2017 12:26:50:  29000000 
INFO  @ Wed, 04 Oct 2017 12:26:53:  30000000 
INFO  @ Wed, 04 Oct 2017 12:26:55:  31000000 
INFO  @ Wed, 04 Oct 2017 12:26:57:  32000000 
INFO  @ Wed, 04 Oct 2017 12:27:00:  33000000 
INFO  @ Wed, 04 Oct 2017 12:27:03:  34000000 
INFO  @ Wed, 04 Oct 2017 12:27:05:  35000000 
INFO  @ Wed, 04 Oct 2017 12:27:08:  36000000 
INFO  @ Wed, 04 Oct 2017 12:27:11:  37000000 
INFO  @ Wed, 04 Oct 2017 12:27:13:  38000000 
INFO  @ Wed, 04 Oct 2017 12:27:16:  39000000 
INFO  @ Wed, 04 Oct 2017 12:27:18:  40000000 
INFO  @ Wed, 04 Oct 2017 12:27:20:  41000000 
INFO  @ Wed, 04 Oct 2017 12:27:23:  42000000 
INFO  @ Wed, 04 Oct 2017 12:27:25:  43000000 
INFO  @ Wed, 04 Oct 2017 12:27:28:  44000000 
INFO  @ Wed, 04 Oct 2017 12:27:31:  45000000 
INFO  @ Wed, 04 Oct 2017 12:27:33:  46000000 
INFO  @ Wed, 04 Oct 2017 12:27:36:  47000000 
INFO  @ Wed, 04 Oct 2017 12:27:38:  48000000 
INFO  @ Wed, 04 Oct 2017 12:27:41:  49000000 
INFO  @ Wed, 04 Oct 2017 12:27:43:  50000000 
INFO  @ Wed, 04 Oct 2017 12:27:46:  51000000 
INFO  @ Wed, 04 Oct 2017 12:27:48:  52000000 
INFO  @ Wed, 04 Oct 2017 12:27:51:  53000000 
INFO  @ Wed, 04 Oct 2017 12:27:53:  54000000 
INFO  @ Wed, 04 Oct 2017 12:27:55:  55000000 
INFO  @ Wed, 04 Oct 2017 12:27:58:  56000000 
INFO  @ Wed, 04 Oct 2017 12:28:00:  57000000 
INFO  @ Wed, 04 Oct 2017 12:28:03:  58000000 
INFO  @ Wed, 04 Oct 2017 12:28:05:  59000000 
INFO  @ Wed, 04 Oct 2017 12:28:08:  60000000 
INFO  @ Wed, 04 Oct 2017 12:28:10:  61000000 
INFO  @ Wed, 04 Oct 2017 12:28:13:  62000000 
INFO  @ Wed, 04 Oct 2017 12:28:15:  63000000 
INFO  @ Wed, 04 Oct 2017 12:28:18:  64000000 
INFO  @ Wed, 04 Oct 2017 12:28:21:  65000000 
INFO  @ Wed, 04 Oct 2017 12:28:23:  66000000 
INFO  @ Wed, 04 Oct 2017 12:28:26:  67000000 
INFO  @ Wed, 04 Oct 2017 12:28:29:  68000000 
INFO  @ Wed, 04 Oct 2017 12:28:32:  69000000 
INFO  @ Wed, 04 Oct 2017 12:28:34:  70000000 
INFO  @ Wed, 04 Oct 2017 12:28:37:  71000000 
INFO  @ Wed, 04 Oct 2017 12:28:40:  72000000 
INFO  @ Wed, 04 Oct 2017 12:28:42:  73000000 
INFO  @ Wed, 04 Oct 2017 12:28:44:  74000000 
INFO  @ Wed, 04 Oct 2017 12:28:47:  75000000 
INFO  @ Wed, 04 Oct 2017 12:28:50:  76000000 
INFO  @ Wed, 04 Oct 2017 12:28:52:  77000000 
INFO  @ Wed, 04 Oct 2017 12:28:55:  78000000 
INFO  @ Wed, 04 Oct 2017 12:28:57:  79000000 
INFO  @ Wed, 04 Oct 2017 12:29:00:  80000000 
INFO  @ Wed, 04 Oct 2017 12:29:02:  81000000 
INFO  @ Wed, 04 Oct 2017 12:29:04:  82000000 
INFO  @ Wed, 04 Oct 2017 12:29:07:  83000000 
INFO  @ Wed, 04 Oct 2017 12:29:10:  84000000 
INFO  @ Wed, 04 Oct 2017 12:29:12:  85000000 
INFO  @ Wed, 04 Oct 2017 12:29:15:  86000000 
INFO  @ Wed, 04 Oct 2017 12:29:17:  87000000 
INFO  @ Wed, 04 Oct 2017 12:29:20:  88000000 
INFO  @ Wed, 04 Oct 2017 12:29:22:  89000000 
INFO  @ Wed, 04 Oct 2017 12:29:25:  90000000 
INFO  @ Wed, 04 Oct 2017 12:29:27:  91000000 
INFO  @ Wed, 04 Oct 2017 12:29:30:  92000000 
INFO  @ Wed, 04 Oct 2017 12:29:33:  93000000 
INFO  @ Wed, 04 Oct 2017 12:29:35:  94000000 
INFO  @ Wed, 04 Oct 2017 12:29:37:  95000000 
INFO  @ Wed, 04 Oct 2017 12:29:40:  96000000 
INFO  @ Wed, 04 Oct 2017 12:29:43:  97000000 
INFO  @ Wed, 04 Oct 2017 12:29:45:  98000000 
INFO  @ Wed, 04 Oct 2017 12:29:48:  99000000 
INFO  @ Wed, 04 Oct 2017 12:29:50:  100000000 
INFO  @ Wed, 04 Oct 2017 12:29:53:  101000000 
INFO  @ Wed, 04 Oct 2017 12:29:55:  102000000 
INFO  @ Wed, 04 Oct 2017 12:29:58:  103000000 
INFO  @ Wed, 04 Oct 2017 12:30:01:  104000000 
INFO  @ Wed, 04 Oct 2017 12:30:08: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 12:30:08: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 12:30:08: #1  total tags in treatment: 104933666 
INFO  @ Wed, 04 Oct 2017 12:30:08: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 12:30:08: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 12:30:11: #1  tags after filtering in treatment: 95845376 
INFO  @ Wed, 04 Oct 2017 12:30:11: #1  Redundant rate of treatment: 0.09 
INFO  @ Wed, 04 Oct 2017 12:30:11: #1 finished! 
INFO  @ Wed, 04 Oct 2017 12:30:11: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 12:30:11: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 12:30:11: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 12:30:11: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 12:30:11: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 12:36:31: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 12:41:02: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 12:41:03: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 12:41:03: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 12:41:04: Done! 
</pre>
Process 20532 returned: (0). Elapsed: 0:15:34. Peak memory: (Process: 1.252GB; Pipeline: 1.217GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 12:41:08 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 12:41:08 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 12:41:08	MarkDuplicates	Start of doWork freeMemory: 503974352; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 12:41:08	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 12:41:08	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 12:41:19	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:10s.  Time for last 1,000,000:   10s.  Last read position: chr1:25,375,925
INFO	2017-10-04 12:41:19	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:41:29	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:21s.  Time for last 1,000,000:   10s.  Last read position: chr1:50,369,610
INFO	2017-10-04 12:41:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:41:41	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:32s.  Time for last 1,000,000:   11s.  Last read position: chr1:74,704,099
INFO	2017-10-04 12:41:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:41:52	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:44s.  Time for last 1,000,000:   11s.  Last read position: chr1:97,350,830
INFO	2017-10-04 12:41:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:42:02	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:53s.  Time for last 1,000,000:    9s.  Last read position: chr1:121,452,597
INFO	2017-10-04 12:42:02	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:42:11	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:02s.  Time for last 1,000,000:    8s.  Last read position: chr1:171,198,115
INFO	2017-10-04 12:42:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:42:28	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:19s.  Time for last 1,000,000:   17s.  Last read position: chr1:194,277,173
INFO	2017-10-04 12:42:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:42:36	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:28s.  Time for last 1,000,000:    8s.  Last read position: chr1:215,917,029
INFO	2017-10-04 12:42:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:42:47	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:38s.  Time for last 1,000,000:   10s.  Last read position: chr1:239,133,585
INFO	2017-10-04 12:42:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:42:56	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:47s.  Time for last 1,000,000:    9s.  Last read position: chr2:12,974,038
INFO	2017-10-04 12:42:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:43:09	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:02:00s.  Time for last 1,000,000:   12s.  Last read position: chr2:35,495,851
INFO	2017-10-04 12:43:09	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:43:18	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:09s.  Time for last 1,000,000:    9s.  Last read position: chr2:57,916,797
INFO	2017-10-04 12:43:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:43:29	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:20s.  Time for last 1,000,000:   10s.  Last read position: chr2:80,614,596
INFO	2017-10-04 12:43:29	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:43:44	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:35s.  Time for last 1,000,000:   15s.  Last read position: chr2:109,294,612
INFO	2017-10-04 12:43:44	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:43:53	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:02:44s.  Time for last 1,000,000:    8s.  Last read position: chr2:132,897,787
INFO	2017-10-04 12:43:53	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:44:01	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:02:52s.  Time for last 1,000,000:    8s.  Last read position: chr2:154,134,600
INFO	2017-10-04 12:44:01	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-04 12:44:11	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:03s.  Time for last 1,000,000:   10s.  Last read position: chr2:175,463,815
INFO	2017-10-04 12:44:11	MarkDuplicates	Tracking 22 as yet unmatched pairs. 22 records in RAM.
INFO	2017-10-04 12:44:25	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:03:17s.  Time for last 1,000,000:   13s.  Last read position: chr2:197,142,802
INFO	2017-10-04 12:44:25	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:44:35	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:03:26s.  Time for last 1,000,000:    9s.  Last read position: chr2:219,107,732
INFO	2017-10-04 12:44:35	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:44:45	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:03:36s.  Time for last 1,000,000:    9s.  Last read position: chr2:241,891,021
INFO	2017-10-04 12:44:45	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 12:45:00	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:03:51s.  Time for last 1,000,000:   15s.  Last read position: chr3:21,784,491
INFO	2017-10-04 12:45:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:45:08	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:04:00s.  Time for last 1,000,000:    8s.  Last read position: chr3:44,502,029
INFO	2017-10-04 12:45:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:45:17	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:04:08s.  Time for last 1,000,000:    8s.  Last read position: chr3:67,108,528
INFO	2017-10-04 12:45:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:45:26	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:04:18s.  Time for last 1,000,000:    9s.  Last read position: chr3:88,889,498
INFO	2017-10-04 12:45:26	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:45:37	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:04:28s.  Time for last 1,000,000:   10s.  Last read position: chr3:112,050,774
INFO	2017-10-04 12:45:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:45:46	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:04:37s.  Time for last 1,000,000:    8s.  Last read position: chr3:133,819,253
INFO	2017-10-04 12:45:46	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:45:55	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:04:47s.  Time for last 1,000,000:    9s.  Last read position: chr3:155,870,479
INFO	2017-10-04 12:45:55	MarkDuplicates	Tracking 52 as yet unmatched pairs. 52 records in RAM.
INFO	2017-10-04 12:46:09	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:05:00s.  Time for last 1,000,000:   13s.  Last read position: chr3:177,386,590
INFO	2017-10-04 12:46:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:46:18	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:05:09s.  Time for last 1,000,000:    8s.  Last read position: chr4:2,041,528
INFO	2017-10-04 12:46:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:46:27	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:05:18s.  Time for last 1,000,000:    9s.  Last read position: chr4:24,332,858
INFO	2017-10-04 12:46:27	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:46:36	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:05:27s.  Time for last 1,000,000:    8s.  Last read position: chr4:44,860,231
INFO	2017-10-04 12:46:36	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:46:48	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:05:39s.  Time for last 1,000,000:   11s.  Last read position: chr4:68,187,287
INFO	2017-10-04 12:46:48	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:46:55	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:05:46s.  Time for last 1,000,000:    7s.  Last read position: chr4:89,714,099
INFO	2017-10-04 12:46:55	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:47:04	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:05:55s.  Time for last 1,000,000:    8s.  Last read position: chr4:110,507,596
INFO	2017-10-04 12:47:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:47:26	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:06:18s.  Time for last 1,000,000:   22s.  Last read position: chr4:131,478,585
INFO	2017-10-04 12:47:26	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:47:39	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:06:30s.  Time for last 1,000,000:   12s.  Last read position: chr4:152,575,464
INFO	2017-10-04 12:47:39	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:47:47	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:06:39s.  Time for last 1,000,000:    8s.  Last read position: chr4:172,410,982
INFO	2017-10-04 12:47:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:47:56	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:06:47s.  Time for last 1,000,000:    8s.  Last read position: chr5:2,222,218
INFO	2017-10-04 12:47:56	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:48:05	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:06:57s.  Time for last 1,000,000:    9s.  Last read position: chr5:23,424,605
INFO	2017-10-04 12:48:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:48:15	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:07:07s.  Time for last 1,000,000:    9s.  Last read position: chr5:45,696,667
INFO	2017-10-04 12:48:15	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:48:25	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:07:17s.  Time for last 1,000,000:   10s.  Last read position: chr5:73,565,877
INFO	2017-10-04 12:48:25	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 12:48:40	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:07:32s.  Time for last 1,000,000:   15s.  Last read position: chr5:95,684,567
INFO	2017-10-04 12:48:40	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:48:49	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:07:40s.  Time for last 1,000,000:    8s.  Last read position: chr5:116,900,074
INFO	2017-10-04 12:48:49	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 12:48:59	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:07:50s.  Time for last 1,000,000:    9s.  Last read position: chr5:139,475,130
INFO	2017-10-04 12:48:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:49:10	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:08:01s.  Time for last 1,000,000:   11s.  Last read position: chr5:161,972,789
INFO	2017-10-04 12:49:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:49:18	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:08:09s.  Time for last 1,000,000:    8s.  Last read position: chr6:3,286,929
INFO	2017-10-04 12:49:18	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:49:28	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:08:19s.  Time for last 1,000,000:    9s.  Last read position: chr6:27,893,351
INFO	2017-10-04 12:49:28	MarkDuplicates	Tracking 30 as yet unmatched pairs. 30 records in RAM.
INFO	2017-10-04 12:49:37	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:08:29s.  Time for last 1,000,000:    9s.  Last read position: chr6:50,790,214
INFO	2017-10-04 12:49:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:50:03	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:08:54s.  Time for last 1,000,000:   25s.  Last read position: chr6:74,001,480
INFO	2017-10-04 12:50:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:50:10	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:09:02s.  Time for last 1,000,000:    7s.  Last read position: chr6:95,442,492
INFO	2017-10-04 12:50:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:50:23	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:09:14s.  Time for last 1,000,000:   12s.  Last read position: chr6:116,936,701
INFO	2017-10-04 12:50:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:50:33	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:09:24s.  Time for last 1,000,000:    9s.  Last read position: chr6:138,560,690
INFO	2017-10-04 12:50:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:50:41	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:09:32s.  Time for last 1,000,000:    7s.  Last read position: chr6:160,773,452
INFO	2017-10-04 12:50:41	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:50:51	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:09:43s.  Time for last 1,000,000:   10s.  Last read position: chr7:12,585,368
INFO	2017-10-04 12:50:51	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:51:02	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:09:53s.  Time for last 1,000,000:   10s.  Last read position: chr7:34,882,875
INFO	2017-10-04 12:51:02	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:51:17	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:10:08s.  Time for last 1,000,000:   15s.  Last read position: chr7:57,584,662
INFO	2017-10-04 12:51:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:51:25	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:10:16s.  Time for last 1,000,000:    8s.  Last read position: chr7:87,777,616
INFO	2017-10-04 12:51:25	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:51:34	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:10:25s.  Time for last 1,000,000:    9s.  Last read position: chr7:111,462,763
INFO	2017-10-04 12:51:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:51:45	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:10:36s.  Time for last 1,000,000:   11s.  Last read position: chr7:133,428,223
INFO	2017-10-04 12:51:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:51:55	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:10:46s.  Time for last 1,000,000:    9s.  Last read position: chr7:156,361,679
INFO	2017-10-04 12:51:55	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:52:03	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:10:55s.  Time for last 1,000,000:    8s.  Last read position: chr8:21,442,163
INFO	2017-10-04 12:52:03	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:52:13	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:11:04s.  Time for last 1,000,000:    9s.  Last read position: chr8:46,275,005
INFO	2017-10-04 12:52:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:52:27	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:11:18s.  Time for last 1,000,000:   14s.  Last read position: chr8:67,869,675
INFO	2017-10-04 12:52:27	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:52:35	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:11:26s.  Time for last 1,000,000:    8s.  Last read position: chr8:88,818,147
INFO	2017-10-04 12:52:35	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:52:42	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:11:33s.  Time for last 1,000,000:    7s.  Last read position: chr8:111,240,735
INFO	2017-10-04 12:52:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:52:53	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:11:45s.  Time for last 1,000,000:   11s.  Last read position: chr8:132,875,451
INFO	2017-10-04 12:52:53	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:53:03	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:11:54s.  Time for last 1,000,000:    9s.  Last read position: chr9:8,831,932
INFO	2017-10-04 12:53:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:53:11	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:12:02s.  Time for last 1,000,000:    7s.  Last read position: chr9:30,492,281
INFO	2017-10-04 12:53:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:53:20	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:12:11s.  Time for last 1,000,000:    8s.  Last read position: chr9:81,729,245
INFO	2017-10-04 12:53:20	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:53:34	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:12:25s.  Time for last 1,000,000:   14s.  Last read position: chr9:106,434,266
INFO	2017-10-04 12:53:34	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:53:43	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:12:34s.  Time for last 1,000,000:    8s.  Last read position: chr9:129,551,832
INFO	2017-10-04 12:53:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:53:52	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:12:44s.  Time for last 1,000,000:    9s.  Last read position: chr10:15,780,770
INFO	2017-10-04 12:53:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:54:04	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:12:55s.  Time for last 1,000,000:   11s.  Last read position: chr10:44,887,122
INFO	2017-10-04 12:54:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:54:12	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:13:04s.  Time for last 1,000,000:    8s.  Last read position: chr10:68,708,001
INFO	2017-10-04 12:54:12	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:54:20	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:13:11s.  Time for last 1,000,000:    7s.  Last read position: chr10:93,060,656
INFO	2017-10-04 12:54:20	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:54:28	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:13:19s.  Time for last 1,000,000:    7s.  Last read position: chr10:116,557,278
INFO	2017-10-04 12:54:28	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 12:54:44	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:13:35s.  Time for last 1,000,000:   15s.  Last read position: chr11:5,939,316
INFO	2017-10-04 12:54:44	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:54:52	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:13:44s.  Time for last 1,000,000:    8s.  Last read position: chr11:27,074,270
INFO	2017-10-04 12:54:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:55:02	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:13:53s.  Time for last 1,000,000:    9s.  Last read position: chr11:49,657,421
INFO	2017-10-04 12:55:02	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:55:12	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:14:03s.  Time for last 1,000,000:    9s.  Last read position: chr11:76,207,693
INFO	2017-10-04 12:55:12	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 12:55:20	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:14:12s.  Time for last 1,000,000:    8s.  Last read position: chr11:99,176,164
INFO	2017-10-04 12:55:20	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:55:29	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:14:20s.  Time for last 1,000,000:    8s.  Last read position: chr11:122,171,762
INFO	2017-10-04 12:55:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:55:37	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:14:29s.  Time for last 1,000,000:    8s.  Last read position: chr12:9,870,679
INFO	2017-10-04 12:55:37	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:55:52	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:14:43s.  Time for last 1,000,000:   14s.  Last read position: chr12:33,092,599
INFO	2017-10-04 12:55:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:56:00	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:14:52s.  Time for last 1,000,000:    8s.  Last read position: chr12:58,956,779
INFO	2017-10-04 12:56:00	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:56:08	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:14:59s.  Time for last 1,000,000:    7s.  Last read position: chr12:81,932,538
INFO	2017-10-04 12:56:08	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:56:18	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:15:09s.  Time for last 1,000,000:    9s.  Last read position: chr12:104,802,658
INFO	2017-10-04 12:56:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:56:27	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:15:19s.  Time for last 1,000,000:    9s.  Last read position: chr12:129,996,205
INFO	2017-10-04 12:56:27	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:56:35	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:15:26s.  Time for last 1,000,000:    7s.  Last read position: chr13:39,199,560
INFO	2017-10-04 12:56:35	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:56:50	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:15:42s.  Time for last 1,000,000:   15s.  Last read position: chr13:61,789,259
INFO	2017-10-04 12:56:50	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:56:59	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:15:50s.  Time for last 1,000,000:    8s.  Last read position: chr13:82,573,289
INFO	2017-10-04 12:56:59	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:57:08	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:15:59s.  Time for last 1,000,000:    9s.  Last read position: chr13:103,362,192
INFO	2017-10-04 12:57:08	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 12:57:16	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:16:07s.  Time for last 1,000,000:    8s.  Last read position: chr14:31,477,757
INFO	2017-10-04 12:57:16	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:57:27	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:16:18s.  Time for last 1,000,000:   11s.  Last read position: chr14:55,373,605
INFO	2017-10-04 12:57:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:57:36	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:16:27s.  Time for last 1,000,000:    8s.  Last read position: chr14:79,940,810
INFO	2017-10-04 12:57:36	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:57:46	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:16:38s.  Time for last 1,000,000:   10s.  Last read position: chr14:104,047,950
INFO	2017-10-04 12:57:46	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 12:58:02	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:16:53s.  Time for last 1,000,000:   15s.  Last read position: chr15:45,573,562
INFO	2017-10-04 12:58:02	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:58:11	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:17:02s.  Time for last 1,000,000:    9s.  Last read position: chr15:73,165,875
INFO	2017-10-04 12:58:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:58:22	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:17:13s.  Time for last 1,000,000:   10s.  Last read position: chr15:100,223,918
INFO	2017-10-04 12:58:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:58:32	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:17:23s.  Time for last 1,000,000:    9s.  Last read position: chr16:26,164,396
INFO	2017-10-04 12:58:32	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:58:45	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:17:36s.  Time for last 1,000,000:   13s.  Last read position: chr16:63,366,622
INFO	2017-10-04 12:58:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:58:54	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:17:46s.  Time for last 1,000,000:    9s.  Last read position: chr16:87,391,745
INFO	2017-10-04 12:58:54	MarkDuplicates	Tracking 34 as yet unmatched pairs. 34 records in RAM.
INFO	2017-10-04 12:59:04	MarkDuplicates	Read   103,000,000 records.  Elapsed time: 00:17:55s.  Time for last 1,000,000:    9s.  Last read position: chr17:27,321,714
INFO	2017-10-04 12:59:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:59:18	MarkDuplicates	Read   104,000,000 records.  Elapsed time: 00:18:09s.  Time for last 1,000,000:   13s.  Last read position: chr17:54,294,819
INFO	2017-10-04 12:59:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:59:24	MarkDuplicates	Read   105,000,000 records.  Elapsed time: 00:18:16s.  Time for last 1,000,000:    6s.  Last read position: chr17:79,802,491
INFO	2017-10-04 12:59:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 12:59:34	MarkDuplicates	Read   106,000,000 records.  Elapsed time: 00:18:25s.  Time for last 1,000,000:    9s.  Last read position: chr18:26,549,630
INFO	2017-10-04 12:59:34	MarkDuplicates	Tracking 36 as yet unmatched pairs. 36 records in RAM.
INFO	2017-10-04 12:59:42	MarkDuplicates	Read   107,000,000 records.  Elapsed time: 00:18:33s.  Time for last 1,000,000:    7s.  Last read position: chr18:47,609,973
INFO	2017-10-04 12:59:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 12:59:53	MarkDuplicates	Read   108,000,000 records.  Elapsed time: 00:18:44s.  Time for last 1,000,000:   10s.  Last read position: chr18:69,099,669
INFO	2017-10-04 12:59:53	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 13:00:02	MarkDuplicates	Read   109,000,000 records.  Elapsed time: 00:18:54s.  Time for last 1,000,000:    9s.  Last read position: chr19:10,960,806
INFO	2017-10-04 13:00:02	MarkDuplicates	Tracking 48 as yet unmatched pairs. 48 records in RAM.
INFO	2017-10-04 13:00:13	MarkDuplicates	Read   110,000,000 records.  Elapsed time: 00:19:04s.  Time for last 1,000,000:   10s.  Last read position: chr19:40,824,021
INFO	2017-10-04 13:00:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 13:00:27	MarkDuplicates	Read   111,000,000 records.  Elapsed time: 00:19:18s.  Time for last 1,000,000:   14s.  Last read position: chr20:8,501,766
INFO	2017-10-04 13:00:27	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 13:00:36	MarkDuplicates	Read   112,000,000 records.  Elapsed time: 00:19:27s.  Time for last 1,000,000:    8s.  Last read position: chr20:36,557,060
INFO	2017-10-04 13:00:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 13:00:44	MarkDuplicates	Read   113,000,000 records.  Elapsed time: 00:19:36s.  Time for last 1,000,000:    8s.  Last read position: chr20:63,308,134
INFO	2017-10-04 13:00:44	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 13:00:54	MarkDuplicates	Read   114,000,000 records.  Elapsed time: 00:19:46s.  Time for last 1,000,000:   10s.  Last read position: chr21:34,995,646
INFO	2017-10-04 13:00:54	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 13:01:05	MarkDuplicates	Read   115,000,000 records.  Elapsed time: 00:19:57s.  Time for last 1,000,000:   10s.  Last read position: chr22:32,841,044
INFO	2017-10-04 13:01:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 13:01:13	MarkDuplicates	Read   116,000,000 records.  Elapsed time: 00:20:04s.  Time for last 1,000,000:    7s.  Last read position: chrX:7,558,053
INFO	2017-10-04 13:01:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 13:01:23	MarkDuplicates	Read   117,000,000 records.  Elapsed time: 00:20:15s.  Time for last 1,000,000:   10s.  Last read position: chrX:32,088,825
INFO	2017-10-04 13:01:23	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 13:01:37	MarkDuplicates	Read   118,000,000 records.  Elapsed time: 00:20:28s.  Time for last 1,000,000:   13s.  Last read position: chrX:65,035,052
INFO	2017-10-04 13:01:37	MarkDuplicates	Tracking 16 as yet unmatched pairs. 16 records in RAM.
INFO	2017-10-04 13:01:44	MarkDuplicates	Read   119,000,000 records.  Elapsed time: 00:20:36s.  Time for last 1,000,000:    7s.  Last read position: chrX:95,387,646
INFO	2017-10-04 13:01:44	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 13:01:53	MarkDuplicates	Read   120,000,000 records.  Elapsed time: 00:20:44s.  Time for last 1,000,000:    8s.  Last read position: chrX:122,249,214
INFO	2017-10-04 13:01:53	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 13:02:02	MarkDuplicates	Read   121,000,000 records.  Elapsed time: 00:20:53s.  Time for last 1,000,000:    8s.  Last read position: chrX:146,133,869
INFO	2017-10-04 13:02:02	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 13:02:10	MarkDuplicates	Read 121627406 records. 0 pairs never matched.
INFO	2017-10-04 13:02:12	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1009344952; totalMemory: 1019215872; maxMemory: 1019215872
INFO	2017-10-04 13:02:12	MarkDuplicates	Will retain up to 31850496 duplicate indices before spilling to disk.
INFO	2017-10-04 13:02:12	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 13:02:41	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 13:03:27	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 13:03:27	MarkDuplicates	After generateDuplicateIndexes freeMemory: 768120768; totalMemory: 1032847360; maxMemory: 1032847360
INFO	2017-10-04 13:03:27	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 13:03:27	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 13:03:27	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 13:05:39	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:11s.  Time for last 10,000,000:  131s.  Last read position: chr2:12,974,038
INFO	2017-10-04 13:07:59	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:32s.  Time for last 10,000,000:  140s.  Last read position: chr2:241,891,021
INFO	2017-10-04 13:10:20	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:52s.  Time for last 10,000,000:  140s.  Last read position: chr4:24,332,858
INFO	2017-10-04 13:12:43	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:09:15s.  Time for last 10,000,000:  143s.  Last read position: chr5:45,696,667
INFO	2017-10-04 13:15:07	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:11:39s.  Time for last 10,000,000:  143s.  Last read position: chr6:95,442,492
INFO	2017-10-04 13:17:31	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:14:03s.  Time for last 10,000,000:  144s.  Last read position: chr7:156,361,679
INFO	2017-10-04 13:19:54	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:16:26s.  Time for last 10,000,000:  143s.  Last read position: chr9:106,434,266
INFO	2017-10-04 13:22:14	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:18:46s.  Time for last 10,000,000:  139s.  Last read position: chr11:76,207,693
INFO	2017-10-04 13:24:24	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:20:56s.  Time for last 10,000,000:  129s.  Last read position: chr13:61,789,259
INFO	2017-10-04 13:26:34	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:23:06s.  Time for last 10,000,000:  129s.  Last read position: chr16:26,164,396
INFO	2017-10-04 13:28:47	MarkDuplicates	Written   110,000,000 records.  Elapsed time: 00:25:19s.  Time for last 10,000,000:  132s.  Last read position: chr19:40,824,021
INFO	2017-10-04 13:30:52	MarkDuplicates	Written   120,000,000 records.  Elapsed time: 00:27:25s.  Time for last 10,000,000:  125s.  Last read position: chrX:122,249,214
INFO	2017-10-04 13:31:15	MarkDuplicates	Before output close freeMemory: 1026593312; totalMemory: 1037041664; maxMemory: 1037041664
INFO	2017-10-04 13:31:15	MarkDuplicates	After output close freeMemory: 1026579744; totalMemory: 1037041664; maxMemory: 1037041664
[Wed Oct 04 13:31:15 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 50.13 minutes.
Runtime.totalMemory()=1037041664
</pre>
Process 20881 returned: (0). Elapsed: 0:50:36.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

<pre>
</pre>
Process 22399 returned: (0). Elapsed: 0:05:33. Peak memory: (Process: 0.018GB; Pipeline: 1.252GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 22542 returned: (0). Elapsed: 0:19:34. Peak memory: (Process: 0.002GB; Pipeline: 1.252GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_4.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 13:56:52: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_4.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = breast_epithelium_4.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 13:56:52: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 13:56:52: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 13:56:55:  1000000 
INFO  @ Wed, 04 Oct 2017 13:56:58:  2000000 
INFO  @ Wed, 04 Oct 2017 13:57:00:  3000000 
INFO  @ Wed, 04 Oct 2017 13:57:03:  4000000 
INFO  @ Wed, 04 Oct 2017 13:57:06:  5000000 
INFO  @ Wed, 04 Oct 2017 13:57:09:  6000000 
INFO  @ Wed, 04 Oct 2017 13:57:11:  7000000 
INFO  @ Wed, 04 Oct 2017 13:57:14:  8000000 
INFO  @ Wed, 04 Oct 2017 13:57:17:  9000000 
INFO  @ Wed, 04 Oct 2017 13:57:20:  10000000 
INFO  @ Wed, 04 Oct 2017 13:57:23:  11000000 
INFO  @ Wed, 04 Oct 2017 13:57:25:  12000000 
INFO  @ Wed, 04 Oct 2017 13:57:28:  13000000 
INFO  @ Wed, 04 Oct 2017 13:57:31:  14000000 
INFO  @ Wed, 04 Oct 2017 13:57:33:  15000000 
INFO  @ Wed, 04 Oct 2017 13:57:36:  16000000 
INFO  @ Wed, 04 Oct 2017 13:57:39:  17000000 
INFO  @ Wed, 04 Oct 2017 13:57:42:  18000000 
INFO  @ Wed, 04 Oct 2017 13:57:44:  19000000 
INFO  @ Wed, 04 Oct 2017 13:57:47:  20000000 
INFO  @ Wed, 04 Oct 2017 13:57:49:  21000000 
INFO  @ Wed, 04 Oct 2017 13:57:52:  22000000 
INFO  @ Wed, 04 Oct 2017 13:57:55:  23000000 
INFO  @ Wed, 04 Oct 2017 13:57:57:  24000000 
INFO  @ Wed, 04 Oct 2017 13:58:00:  25000000 
INFO  @ Wed, 04 Oct 2017 13:58:03:  26000000 
INFO  @ Wed, 04 Oct 2017 13:58:05:  27000000 
INFO  @ Wed, 04 Oct 2017 13:58:08:  28000000 
INFO  @ Wed, 04 Oct 2017 13:58:11:  29000000 
INFO  @ Wed, 04 Oct 2017 13:58:13:  30000000 
INFO  @ Wed, 04 Oct 2017 13:58:16:  31000000 
INFO  @ Wed, 04 Oct 2017 13:58:18:  32000000 
INFO  @ Wed, 04 Oct 2017 13:58:21:  33000000 
INFO  @ Wed, 04 Oct 2017 13:58:23:  34000000 
INFO  @ Wed, 04 Oct 2017 13:58:26:  35000000 
INFO  @ Wed, 04 Oct 2017 13:58:29:  36000000 
INFO  @ Wed, 04 Oct 2017 13:58:32:  37000000 
INFO  @ Wed, 04 Oct 2017 13:58:35:  38000000 
INFO  @ Wed, 04 Oct 2017 13:58:37:  39000000 
INFO  @ Wed, 04 Oct 2017 13:58:40:  40000000 
INFO  @ Wed, 04 Oct 2017 13:58:43:  41000000 
INFO  @ Wed, 04 Oct 2017 13:58:46:  42000000 
INFO  @ Wed, 04 Oct 2017 13:58:48:  43000000 
INFO  @ Wed, 04 Oct 2017 13:58:51:  44000000 
INFO  @ Wed, 04 Oct 2017 13:58:54:  45000000 
INFO  @ Wed, 04 Oct 2017 13:58:57:  46000000 
INFO  @ Wed, 04 Oct 2017 13:59:00:  47000000 
INFO  @ Wed, 04 Oct 2017 13:59:03:  48000000 
INFO  @ Wed, 04 Oct 2017 13:59:06:  49000000 
INFO  @ Wed, 04 Oct 2017 13:59:08:  50000000 
INFO  @ Wed, 04 Oct 2017 13:59:11:  51000000 
INFO  @ Wed, 04 Oct 2017 13:59:14:  52000000 
INFO  @ Wed, 04 Oct 2017 13:59:17:  53000000 
INFO  @ Wed, 04 Oct 2017 13:59:20:  54000000 
INFO  @ Wed, 04 Oct 2017 13:59:23:  55000000 
INFO  @ Wed, 04 Oct 2017 13:59:25:  56000000 
INFO  @ Wed, 04 Oct 2017 13:59:28:  57000000 
INFO  @ Wed, 04 Oct 2017 13:59:31:  58000000 
INFO  @ Wed, 04 Oct 2017 13:59:34:  59000000 
INFO  @ Wed, 04 Oct 2017 13:59:37:  60000000 
INFO  @ Wed, 04 Oct 2017 13:59:39:  61000000 
INFO  @ Wed, 04 Oct 2017 13:59:42:  62000000 
INFO  @ Wed, 04 Oct 2017 13:59:45:  63000000 
INFO  @ Wed, 04 Oct 2017 13:59:48:  64000000 
INFO  @ Wed, 04 Oct 2017 13:59:51:  65000000 
INFO  @ Wed, 04 Oct 2017 13:59:54:  66000000 
INFO  @ Wed, 04 Oct 2017 13:59:57:  67000000 
INFO  @ Wed, 04 Oct 2017 14:00:00:  68000000 
INFO  @ Wed, 04 Oct 2017 14:00:03:  69000000 
INFO  @ Wed, 04 Oct 2017 14:00:05:  70000000 
INFO  @ Wed, 04 Oct 2017 14:00:08:  71000000 
INFO  @ Wed, 04 Oct 2017 14:00:11:  72000000 
INFO  @ Wed, 04 Oct 2017 14:00:14:  73000000 
INFO  @ Wed, 04 Oct 2017 14:00:17:  74000000 
INFO  @ Wed, 04 Oct 2017 14:00:19:  75000000 
INFO  @ Wed, 04 Oct 2017 14:00:22:  76000000 
INFO  @ Wed, 04 Oct 2017 14:00:25:  77000000 
INFO  @ Wed, 04 Oct 2017 14:00:28:  78000000 
INFO  @ Wed, 04 Oct 2017 14:00:31:  79000000 
INFO  @ Wed, 04 Oct 2017 14:00:33:  80000000 
INFO  @ Wed, 04 Oct 2017 14:00:36:  81000000 
INFO  @ Wed, 04 Oct 2017 14:00:39:  82000000 
INFO  @ Wed, 04 Oct 2017 14:00:42:  83000000 
INFO  @ Wed, 04 Oct 2017 14:00:45:  84000000 
INFO  @ Wed, 04 Oct 2017 14:00:47:  85000000 
INFO  @ Wed, 04 Oct 2017 14:00:50:  86000000 
INFO  @ Wed, 04 Oct 2017 14:00:53:  87000000 
INFO  @ Wed, 04 Oct 2017 14:00:56:  88000000 
INFO  @ Wed, 04 Oct 2017 14:00:59:  89000000 
INFO  @ Wed, 04 Oct 2017 14:01:01:  90000000 
INFO  @ Wed, 04 Oct 2017 14:01:04:  91000000 
INFO  @ Wed, 04 Oct 2017 14:01:07:  92000000 
INFO  @ Wed, 04 Oct 2017 14:01:10:  93000000 
INFO  @ Wed, 04 Oct 2017 14:01:13:  94000000 
INFO  @ Wed, 04 Oct 2017 14:01:16:  95000000 
INFO  @ Wed, 04 Oct 2017 14:01:19:  96000000 
INFO  @ Wed, 04 Oct 2017 14:01:21:  97000000 
INFO  @ Wed, 04 Oct 2017 14:01:24:  98000000 
INFO  @ Wed, 04 Oct 2017 14:01:27:  99000000 
INFO  @ Wed, 04 Oct 2017 14:01:30:  100000000 
INFO  @ Wed, 04 Oct 2017 14:01:33:  101000000 
INFO  @ Wed, 04 Oct 2017 14:01:36:  102000000 
INFO  @ Wed, 04 Oct 2017 14:01:39:  103000000 
INFO  @ Wed, 04 Oct 2017 14:01:41:  104000000 
INFO  @ Wed, 04 Oct 2017 14:01:44:  105000000 
INFO  @ Wed, 04 Oct 2017 14:01:47:  106000000 
INFO  @ Wed, 04 Oct 2017 14:01:50:  107000000 
INFO  @ Wed, 04 Oct 2017 14:01:53:  108000000 
INFO  @ Wed, 04 Oct 2017 14:01:56:  109000000 
INFO  @ Wed, 04 Oct 2017 14:01:59:  110000000 
INFO  @ Wed, 04 Oct 2017 14:02:02:  111000000 
INFO  @ Wed, 04 Oct 2017 14:02:05:  112000000 
INFO  @ Wed, 04 Oct 2017 14:02:08:  113000000 
INFO  @ Wed, 04 Oct 2017 14:02:11:  114000000 
INFO  @ Wed, 04 Oct 2017 14:02:14:  115000000 
INFO  @ Wed, 04 Oct 2017 14:02:17:  116000000 
INFO  @ Wed, 04 Oct 2017 14:02:20:  117000000 
INFO  @ Wed, 04 Oct 2017 14:02:22:  118000000 
INFO  @ Wed, 04 Oct 2017 14:02:25:  119000000 
INFO  @ Wed, 04 Oct 2017 14:02:28:  120000000 
INFO  @ Wed, 04 Oct 2017 14:02:31:  121000000 
INFO  @ Wed, 04 Oct 2017 14:02:37: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 14:02:37: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 14:02:37: #1  total tags in treatment: 121627406 
INFO  @ Wed, 04 Oct 2017 14:02:37: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 14:02:37: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 14:02:42: #1  tags after filtering in treatment: 111364524 
INFO  @ Wed, 04 Oct 2017 14:02:42: #1  Redundant rate of treatment: 0.08 
INFO  @ Wed, 04 Oct 2017 14:02:42: #1 finished! 
INFO  @ Wed, 04 Oct 2017 14:02:42: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 14:02:42: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 14:02:42: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 14:02:42: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 14:02:42: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 14:11:34: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 14:17:46: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 14:17:47: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 14:17:48: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 14:17:48: Done! 
</pre>
Process 23695 returned: (0). Elapsed: 0:21:34. Peak memory: (Process: 1.378GB; Pipeline: 1.252GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 14:18:30 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 14:18:30 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 14:18:30	MarkDuplicates	Start of doWork freeMemory: 503974536; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 14:18:30	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 14:18:30	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 14:18:45	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:14s.  Time for last 1,000,000:   14s.  Last read position: chr1:16,499,024
INFO	2017-10-04 14:18:45	MarkDuplicates	Tracking 128 as yet unmatched pairs. 128 records in RAM.
INFO	2017-10-04 14:18:53	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:23s.  Time for last 1,000,000:    8s.  Last read position: chr1:32,702,119
INFO	2017-10-04 14:18:53	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-04 14:19:04	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:34s.  Time for last 1,000,000:   11s.  Last read position: chr1:53,619,908
INFO	2017-10-04 14:19:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:19:20	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:49s.  Time for last 1,000,000:   15s.  Last read position: chr1:85,583,420
INFO	2017-10-04 14:19:20	MarkDuplicates	Tracking 20 as yet unmatched pairs. 20 records in RAM.
INFO	2017-10-04 14:19:29	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:58s.  Time for last 1,000,000:    9s.  Last read position: chr1:115,099,511
INFO	2017-10-04 14:19:29	MarkDuplicates	Tracking 22 as yet unmatched pairs. 22 records in RAM.
INFO	2017-10-04 14:19:37	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:06s.  Time for last 1,000,000:    7s.  Last read position: chr1:159,923,359
INFO	2017-10-04 14:19:37	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-04 14:19:52	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:22s.  Time for last 1,000,000:   15s.  Last read position: chr1:185,559,365
INFO	2017-10-04 14:19:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:20:00	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:29s.  Time for last 1,000,000:    7s.  Last read position: chr1:212,608,368
INFO	2017-10-04 14:20:00	MarkDuplicates	Tracking 180 as yet unmatched pairs. 180 records in RAM.
INFO	2017-10-04 14:20:10	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:40s.  Time for last 1,000,000:   10s.  Last read position: chr1:236,782,500
INFO	2017-10-04 14:20:10	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:20:19	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:48s.  Time for last 1,000,000:    8s.  Last read position: chr2:17,269,516
INFO	2017-10-04 14:20:19	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:20:30	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:59s.  Time for last 1,000,000:   10s.  Last read position: chr2:41,486,616
INFO	2017-10-04 14:20:30	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:20:38	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:07s.  Time for last 1,000,000:    8s.  Last read position: chr2:66,890,814
INFO	2017-10-04 14:20:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:20:49	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:18s.  Time for last 1,000,000:   11s.  Last read position: chr2:99,490,158
INFO	2017-10-04 14:20:49	MarkDuplicates	Tracking 218 as yet unmatched pairs. 218 records in RAM.
INFO	2017-10-04 14:21:05	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:34s.  Time for last 1,000,000:   16s.  Last read position: chr2:130,851,111
INFO	2017-10-04 14:21:05	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:21:13	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:02:43s.  Time for last 1,000,000:    8s.  Last read position: chr2:169,266,946
INFO	2017-10-04 14:21:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:21:23	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:02:52s.  Time for last 1,000,000:    9s.  Last read position: chr2:200,858,381
INFO	2017-10-04 14:21:23	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:21:30	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:02:59s.  Time for last 1,000,000:    7s.  Last read position: chr2:223,761,713
INFO	2017-10-04 14:21:30	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:21:42	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:03:11s.  Time for last 1,000,000:   12s.  Last read position: chr3:4,826,031
INFO	2017-10-04 14:21:42	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 14:21:51	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:03:20s.  Time for last 1,000,000:    8s.  Last read position: chr3:33,279,886
INFO	2017-10-04 14:21:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:22:01	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:03:30s.  Time for last 1,000,000:   10s.  Last read position: chr3:52,835,988
INFO	2017-10-04 14:22:01	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:22:16	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:03:45s.  Time for last 1,000,000:   15s.  Last read position: chr3:86,296,891
INFO	2017-10-04 14:22:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:22:25	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:03:54s.  Time for last 1,000,000:    8s.  Last read position: chr3:122,566,598
INFO	2017-10-04 14:22:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:22:34	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:04:04s.  Time for last 1,000,000:    9s.  Last read position: chr3:148,448,428
INFO	2017-10-04 14:22:34	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:22:41	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:04:11s.  Time for last 1,000,000:    7s.  Last read position: chr3:181,281,558
INFO	2017-10-04 14:22:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:22:52	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:04:22s.  Time for last 1,000,000:   10s.  Last read position: chr4:4,995,338
INFO	2017-10-04 14:22:52	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-04 14:23:01	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:04:30s.  Time for last 1,000,000:    8s.  Last read position: chr4:38,568,978
INFO	2017-10-04 14:23:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:23:11	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:04:40s.  Time for last 1,000,000:    9s.  Last read position: chr4:77,818,692
INFO	2017-10-04 14:23:11	MarkDuplicates	Tracking 82 as yet unmatched pairs. 82 records in RAM.
INFO	2017-10-04 14:23:25	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:04:55s.  Time for last 1,000,000:   14s.  Last read position: chr4:112,637,398
INFO	2017-10-04 14:23:25	MarkDuplicates	Tracking 166 as yet unmatched pairs. 166 records in RAM.
INFO	2017-10-04 14:23:33	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:05:03s.  Time for last 1,000,000:    8s.  Last read position: chr4:147,963,068
INFO	2017-10-04 14:23:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:23:42	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:05:12s.  Time for last 1,000,000:    9s.  Last read position: chr4:183,758,381
INFO	2017-10-04 14:23:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:23:52	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:05:21s.  Time for last 1,000,000:    9s.  Last read position: chr5:31,161,146
INFO	2017-10-04 14:23:52	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:24:04	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:05:33s.  Time for last 1,000,000:   11s.  Last read position: chr5:67,290,047
INFO	2017-10-04 14:24:04	MarkDuplicates	Tracking 44 as yet unmatched pairs. 44 records in RAM.
INFO	2017-10-04 14:24:12	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:05:41s.  Time for last 1,000,000:    8s.  Last read position: chr5:102,857,144
INFO	2017-10-04 14:24:12	MarkDuplicates	Tracking 20 as yet unmatched pairs. 20 records in RAM.
INFO	2017-10-04 14:24:21	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:05:51s.  Time for last 1,000,000:    9s.  Last read position: chr5:135,356,580
INFO	2017-10-04 14:24:21	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 14:24:36	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:06:06s.  Time for last 1,000,000:   15s.  Last read position: chr5:157,365,920
INFO	2017-10-04 14:24:36	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:24:46	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:06:16s.  Time for last 1,000,000:    9s.  Last read position: chr6:1,085,809
INFO	2017-10-04 14:24:46	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:24:54	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:06:24s.  Time for last 1,000,000:    8s.  Last read position: chr6:27,518,823
INFO	2017-10-04 14:24:54	MarkDuplicates	Tracking 40 as yet unmatched pairs. 40 records in RAM.
INFO	2017-10-04 14:25:02	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:06:31s.  Time for last 1,000,000:    7s.  Last read position: chr6:42,783,450
INFO	2017-10-04 14:25:02	MarkDuplicates	Tracking 54 as yet unmatched pairs. 54 records in RAM.
INFO	2017-10-04 14:25:13	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:06:42s.  Time for last 1,000,000:   10s.  Last read position: chr6:79,627,926
INFO	2017-10-04 14:25:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:25:21	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:06:51s.  Time for last 1,000,000:    8s.  Last read position: chr6:113,491,842
INFO	2017-10-04 14:25:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:25:30	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:06:59s.  Time for last 1,000,000:    8s.  Last read position: chr6:147,502,235
INFO	2017-10-04 14:25:30	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:25:45	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:07:15s.  Time for last 1,000,000:   15s.  Last read position: chr7:1,454,605
INFO	2017-10-04 14:25:45	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 14:25:53	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:07:23s.  Time for last 1,000,000:    7s.  Last read position: chr7:28,316,373
INFO	2017-10-04 14:25:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:26:03	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:07:32s.  Time for last 1,000,000:    9s.  Last read position: chr7:64,306,385
INFO	2017-10-04 14:26:03	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 14:26:14	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:07:44s.  Time for last 1,000,000:   11s.  Last read position: chr7:95,596,900
INFO	2017-10-04 14:26:14	MarkDuplicates	Tracking 152 as yet unmatched pairs. 152 records in RAM.
INFO	2017-10-04 14:26:23	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:07:53s.  Time for last 1,000,000:    9s.  Last read position: chr7:123,558,011
INFO	2017-10-04 14:26:23	MarkDuplicates	Tracking 130 as yet unmatched pairs. 130 records in RAM.
INFO	2017-10-04 14:26:31	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:08:01s.  Time for last 1,000,000:    7s.  Last read position: chr7:151,368,355
INFO	2017-10-04 14:26:31	MarkDuplicates	Tracking 44 as yet unmatched pairs. 44 records in RAM.
INFO	2017-10-04 14:26:40	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:08:10s.  Time for last 1,000,000:    9s.  Last read position: chr8:23,111,050
INFO	2017-10-04 14:26:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:26:55	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:08:25s.  Time for last 1,000,000:   14s.  Last read position: chr8:52,758,566
INFO	2017-10-04 14:26:55	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:27:05	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:08:34s.  Time for last 1,000,000:    9s.  Last read position: chr8:89,848,580
INFO	2017-10-04 14:27:05	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 14:27:14	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:08:43s.  Time for last 1,000,000:    9s.  Last read position: chr8:120,375,702
INFO	2017-10-04 14:27:14	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:27:30	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:08:59s.  Time for last 1,000,000:   15s.  Last read position: chr8:144,465,461
INFO	2017-10-04 14:27:30	MarkDuplicates	Tracking 100 as yet unmatched pairs. 100 records in RAM.
INFO	2017-10-04 14:27:39	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:09:08s.  Time for last 1,000,000:    8s.  Last read position: chr9:33,329,453
INFO	2017-10-04 14:27:39	MarkDuplicates	Tracking 58 as yet unmatched pairs. 58 records in RAM.
INFO	2017-10-04 14:27:53	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:09:23s.  Time for last 1,000,000:   14s.  Last read position: chr9:87,401,961
INFO	2017-10-04 14:27:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:28:02	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:09:32s.  Time for last 1,000,000:    9s.  Last read position: chr9:112,750,554
INFO	2017-10-04 14:28:02	MarkDuplicates	Tracking 42 as yet unmatched pairs. 42 records in RAM.
INFO	2017-10-04 14:28:16	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:09:46s.  Time for last 1,000,000:   14s.  Last read position: chr9:130,215,989
INFO	2017-10-04 14:28:16	MarkDuplicates	Tracking 30 as yet unmatched pairs. 30 records in RAM.
INFO	2017-10-04 14:28:24	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:09:53s.  Time for last 1,000,000:    7s.  Last read position: chr10:10,945,640
INFO	2017-10-04 14:28:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:28:33	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:10:02s.  Time for last 1,000,000:    8s.  Last read position: chr10:42,902,885
INFO	2017-10-04 14:28:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:28:44	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:10:14s.  Time for last 1,000,000:   11s.  Last read position: chr10:73,168,171
INFO	2017-10-04 14:28:44	MarkDuplicates	Tracking 190 as yet unmatched pairs. 190 records in RAM.
INFO	2017-10-04 14:28:53	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:10:23s.  Time for last 1,000,000:    9s.  Last read position: chr10:96,361,311
INFO	2017-10-04 14:28:53	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:29:04	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:10:33s.  Time for last 1,000,000:   10s.  Last read position: chr10:119,430,167
INFO	2017-10-04 14:29:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:29:11	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:10:41s.  Time for last 1,000,000:    7s.  Last read position: chr11:5,801,583
INFO	2017-10-04 14:29:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:29:26	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:10:55s.  Time for last 1,000,000:   14s.  Last read position: chr11:33,015,731
INFO	2017-10-04 14:29:26	MarkDuplicates	Tracking 32 as yet unmatched pairs. 32 records in RAM.
INFO	2017-10-04 14:29:38	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:11:07s.  Time for last 1,000,000:   11s.  Last read position: chr11:62,841,560
INFO	2017-10-04 14:29:38	MarkDuplicates	Tracking 138 as yet unmatched pairs. 138 records in RAM.
INFO	2017-10-04 14:29:47	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:11:16s.  Time for last 1,000,000:    9s.  Last read position: chr11:74,397,852
INFO	2017-10-04 14:29:47	MarkDuplicates	Tracking 16 as yet unmatched pairs. 16 records in RAM.
INFO	2017-10-04 14:29:58	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:11:27s.  Time for last 1,000,000:   10s.  Last read position: chr11:107,593,823
INFO	2017-10-04 14:29:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:30:06	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:11:36s.  Time for last 1,000,000:    8s.  Last read position: chr11:130,069,401
INFO	2017-10-04 14:30:06	MarkDuplicates	Tracking 278 as yet unmatched pairs. 278 records in RAM.
INFO	2017-10-04 14:30:17	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:11:46s.  Time for last 1,000,000:   10s.  Last read position: chr12:16,386,196
INFO	2017-10-04 14:30:17	MarkDuplicates	Tracking 16 as yet unmatched pairs. 16 records in RAM.
INFO	2017-10-04 14:30:25	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:11:55s.  Time for last 1,000,000:    8s.  Last read position: chr12:49,760,593
INFO	2017-10-04 14:30:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:30:39	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:12:09s.  Time for last 1,000,000:   14s.  Last read position: chr12:68,841,339
INFO	2017-10-04 14:30:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:30:48	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:12:18s.  Time for last 1,000,000:    9s.  Last read position: chr12:103,758,094
INFO	2017-10-04 14:30:48	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 14:30:59	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:12:29s.  Time for last 1,000,000:   10s.  Last read position: chr12:124,024,862
INFO	2017-10-04 14:30:59	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:31:12	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:12:41s.  Time for last 1,000,000:   12s.  Last read position: chr13:35,125,441
INFO	2017-10-04 14:31:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:31:22	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:12:51s.  Time for last 1,000,000:    9s.  Last read position: chr13:69,134,704
INFO	2017-10-04 14:31:22	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:31:31	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:13:01s.  Time for last 1,000,000:    9s.  Last read position: chr13:108,556,210
INFO	2017-10-04 14:31:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:31:39	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:13:09s.  Time for last 1,000,000:    7s.  Last read position: chr14:36,795,736
INFO	2017-10-04 14:31:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:31:55	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:13:24s.  Time for last 1,000,000:   15s.  Last read position: chr14:68,307,491
INFO	2017-10-04 14:31:55	MarkDuplicates	Tracking 30 as yet unmatched pairs. 30 records in RAM.
INFO	2017-10-04 14:32:05	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:13:34s.  Time for last 1,000,000:   10s.  Last read position: chr14:92,794,229
INFO	2017-10-04 14:32:05	MarkDuplicates	Tracking 248 as yet unmatched pairs. 248 records in RAM.
INFO	2017-10-04 14:32:14	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:13:44s.  Time for last 1,000,000:    9s.  Last read position: chr15:32,120,929
INFO	2017-10-04 14:32:14	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:32:25	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:13:54s.  Time for last 1,000,000:   10s.  Last read position: chr15:60,092,509
INFO	2017-10-04 14:32:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:32:33	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:14:02s.  Time for last 1,000,000:    8s.  Last read position: chr15:80,695,362
INFO	2017-10-04 14:32:33	MarkDuplicates	Tracking 118 as yet unmatched pairs. 118 records in RAM.
INFO	2017-10-04 14:32:43	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:14:13s.  Time for last 1,000,000:   10s.  Last read position: chr16:1,420,838
INFO	2017-10-04 14:32:43	MarkDuplicates	Tracking 176 as yet unmatched pairs. 176 records in RAM.
INFO	2017-10-04 14:32:52	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:14:22s.  Time for last 1,000,000:    9s.  Last read position: chr16:23,146,610
INFO	2017-10-04 14:32:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:33:08	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:14:38s.  Time for last 1,000,000:   15s.  Last read position: chr16:58,591,602
INFO	2017-10-04 14:33:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:33:18	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:14:48s.  Time for last 1,000,000:   10s.  Last read position: chr16:84,833,262
INFO	2017-10-04 14:33:18	MarkDuplicates	Tracking 56 as yet unmatched pairs. 56 records in RAM.
INFO	2017-10-04 14:33:26	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:14:56s.  Time for last 1,000,000:    7s.  Last read position: chr17:7,484,656
INFO	2017-10-04 14:33:26	MarkDuplicates	Tracking 296 as yet unmatched pairs. 296 records in RAM.
INFO	2017-10-04 14:33:37	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:15:07s.  Time for last 1,000,000:   11s.  Last read position: chr17:31,558,950
INFO	2017-10-04 14:33:37	MarkDuplicates	Tracking 282 as yet unmatched pairs. 282 records in RAM.
INFO	2017-10-04 14:33:45	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:15:14s.  Time for last 1,000,000:    7s.  Last read position: chr17:48,414,388
INFO	2017-10-04 14:33:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:33:55	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:15:24s.  Time for last 1,000,000:    9s.  Last read position: chr17:70,429,628
INFO	2017-10-04 14:33:55	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:34:11	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:15:41s.  Time for last 1,000,000:   16s.  Last read position: chr18:380,001
INFO	2017-10-04 14:34:11	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-04 14:34:20	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:15:49s.  Time for last 1,000,000:    8s.  Last read position: chr18:36,175,705
INFO	2017-10-04 14:34:20	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:34:29	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:15:59s.  Time for last 1,000,000:    9s.  Last read position: chr18:69,920,761
INFO	2017-10-04 14:34:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:34:38	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:16:07s.  Time for last 1,000,000:    8s.  Last read position: chr19:4,969,230
INFO	2017-10-04 14:34:38	MarkDuplicates	Tracking 94 as yet unmatched pairs. 94 records in RAM.
INFO	2017-10-04 14:34:48	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:16:17s.  Time for last 1,000,000:   10s.  Last read position: chr19:16,296,100
INFO	2017-10-04 14:34:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:34:57	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:16:26s.  Time for last 1,000,000:    8s.  Last read position: chr19:38,960,638
INFO	2017-10-04 14:34:57	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:35:06	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:16:36s.  Time for last 1,000,000:    9s.  Last read position: chr19:49,591,211
INFO	2017-10-04 14:35:06	MarkDuplicates	Tracking 124 as yet unmatched pairs. 124 records in RAM.
INFO	2017-10-04 14:35:21	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:16:51s.  Time for last 1,000,000:   15s.  Last read position: chr20:8,529,380
INFO	2017-10-04 14:35:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:35:32	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:17:01s.  Time for last 1,000,000:   10s.  Last read position: chr20:37,390,001
INFO	2017-10-04 14:35:32	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 14:35:42	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:17:12s.  Time for last 1,000,000:   10s.  Last read position: chr20:60,505,632
INFO	2017-10-04 14:35:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 14:35:51	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:17:21s.  Time for last 1,000,000:    8s.  Last read position: chr21:37,702,801
INFO	2017-10-04 14:35:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:36:05	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:17:34s.  Time for last 1,000,000:   13s.  Last read position: chr22:28,785,687
INFO	2017-10-04 14:36:05	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:36:13	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:17:42s.  Time for last 1,000,000:    8s.  Last read position: chr22:43,164,574
INFO	2017-10-04 14:36:13	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 14:36:23	MarkDuplicates	Read   103,000,000 records.  Elapsed time: 00:17:52s.  Time for last 1,000,000:   10s.  Last read position: chrX:22,377,176
INFO	2017-10-04 14:36:23	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:36:40	MarkDuplicates	Read   104,000,000 records.  Elapsed time: 00:18:09s.  Time for last 1,000,000:   17s.  Last read position: chrX:64,934,020
INFO	2017-10-04 14:36:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:36:50	MarkDuplicates	Read   105,000,000 records.  Elapsed time: 00:18:19s.  Time for last 1,000,000:    9s.  Last read position: chrX:114,156,724
INFO	2017-10-04 14:36:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 14:37:00	MarkDuplicates	Read   106,000,000 records.  Elapsed time: 00:18:29s.  Time for last 1,000,000:    9s.  Last read position: chrX:154,141,036
INFO	2017-10-04 14:37:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 14:37:01	MarkDuplicates	Read 106181400 records. 0 pairs never matched.
INFO	2017-10-04 14:37:04	MarkDuplicates	After buildSortedReadEndLists freeMemory: 978290608; totalMemory: 988282880; maxMemory: 988282880
INFO	2017-10-04 14:37:04	MarkDuplicates	Will retain up to 30883840 duplicate indices before spilling to disk.
INFO	2017-10-04 14:37:04	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 14:37:31	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 14:38:15	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 14:38:16	MarkDuplicates	After generateDuplicateIndexes freeMemory: 752800200; totalMemory: 1009778688; maxMemory: 1009778688
INFO	2017-10-04 14:38:16	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 14:38:16	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 14:38:16	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 14:40:39	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:23s.  Time for last 10,000,000:  143s.  Last read position: chr2:17,269,516
INFO	2017-10-04 14:43:10	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:54s.  Time for last 10,000,000:  150s.  Last read position: chr3:52,835,988
INFO	2017-10-04 14:45:46	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:07:29s.  Time for last 10,000,000:  155s.  Last read position: chr4:183,758,381
INFO	2017-10-04 14:48:18	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:10:02s.  Time for last 10,000,000:  152s.  Last read position: chr6:113,491,842
INFO	2017-10-04 14:50:48	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:12:32s.  Time for last 10,000,000:  150s.  Last read position: chr8:89,848,580
INFO	2017-10-04 14:53:19	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:15:03s.  Time for last 10,000,000:  150s.  Last read position: chr10:96,361,311
INFO	2017-10-04 14:55:53	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:17:37s.  Time for last 10,000,000:  153s.  Last read position: chr12:68,841,339
INFO	2017-10-04 14:58:24	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:20:08s.  Time for last 10,000,000:  151s.  Last read position: chr15:60,092,509
INFO	2017-10-04 15:00:55	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:22:38s.  Time for last 10,000,000:  150s.  Last read position: chr18:380,001
INFO	2017-10-04 15:03:29	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:25:13s.  Time for last 10,000,000:  154s.  Last read position: chr21:37,702,801
INFO	2017-10-04 15:05:03	MarkDuplicates	Before output close freeMemory: 1003472880; totalMemory: 1013972992; maxMemory: 1013972992
INFO	2017-10-04 15:05:03	MarkDuplicates	After output close freeMemory: 1003459336; totalMemory: 1013972992; maxMemory: 1013972992
[Wed Oct 04 15:05:03 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 46.58 minutes.
Runtime.totalMemory()=1013972992
</pre>
Process 24498 returned: (0). Elapsed: 0:47:36.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`

<pre>
</pre>
Process 26522 returned: (0). Elapsed: 0:05:33. Peak memory: (Process: 0.021GB; Pipeline: 1.378GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 27544 returned: (0). Elapsed: 0:19:34. Peak memory: (Process: 0.002GB; Pipeline: 1.378GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n colon_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 15:31:09: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n colon_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = colon_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 15:31:09: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 15:31:09: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 15:31:12:  1000000 
INFO  @ Wed, 04 Oct 2017 15:31:15:  2000000 
INFO  @ Wed, 04 Oct 2017 15:31:18:  3000000 
INFO  @ Wed, 04 Oct 2017 15:31:21:  4000000 
INFO  @ Wed, 04 Oct 2017 15:31:24:  5000000 
INFO  @ Wed, 04 Oct 2017 15:31:27:  6000000 
INFO  @ Wed, 04 Oct 2017 15:31:31:  7000000 
INFO  @ Wed, 04 Oct 2017 15:31:34:  8000000 
INFO  @ Wed, 04 Oct 2017 15:31:37:  9000000 
INFO  @ Wed, 04 Oct 2017 15:31:40:  10000000 
INFO  @ Wed, 04 Oct 2017 15:31:43:  11000000 
INFO  @ Wed, 04 Oct 2017 15:31:46:  12000000 
INFO  @ Wed, 04 Oct 2017 15:31:49:  13000000 
INFO  @ Wed, 04 Oct 2017 15:31:52:  14000000 
INFO  @ Wed, 04 Oct 2017 15:31:55:  15000000 
INFO  @ Wed, 04 Oct 2017 15:31:58:  16000000 
INFO  @ Wed, 04 Oct 2017 15:32:01:  17000000 
INFO  @ Wed, 04 Oct 2017 15:32:04:  18000000 
INFO  @ Wed, 04 Oct 2017 15:32:08:  19000000 
INFO  @ Wed, 04 Oct 2017 15:32:11:  20000000 
INFO  @ Wed, 04 Oct 2017 15:32:14:  21000000 
INFO  @ Wed, 04 Oct 2017 15:32:17:  22000000 
INFO  @ Wed, 04 Oct 2017 15:32:20:  23000000 
INFO  @ Wed, 04 Oct 2017 15:32:23:  24000000 
INFO  @ Wed, 04 Oct 2017 15:32:26:  25000000 
INFO  @ Wed, 04 Oct 2017 15:32:29:  26000000 
INFO  @ Wed, 04 Oct 2017 15:32:32:  27000000 
INFO  @ Wed, 04 Oct 2017 15:32:35:  28000000 
INFO  @ Wed, 04 Oct 2017 15:32:39:  29000000 
INFO  @ Wed, 04 Oct 2017 15:32:42:  30000000 
INFO  @ Wed, 04 Oct 2017 15:32:45:  31000000 
INFO  @ Wed, 04 Oct 2017 15:32:48:  32000000 
INFO  @ Wed, 04 Oct 2017 15:32:51:  33000000 
INFO  @ Wed, 04 Oct 2017 15:32:54:  34000000 
INFO  @ Wed, 04 Oct 2017 15:32:58:  35000000 
INFO  @ Wed, 04 Oct 2017 15:33:01:  36000000 
INFO  @ Wed, 04 Oct 2017 15:33:04:  37000000 
INFO  @ Wed, 04 Oct 2017 15:33:07:  38000000 
INFO  @ Wed, 04 Oct 2017 15:33:11:  39000000 
INFO  @ Wed, 04 Oct 2017 15:33:14:  40000000 
INFO  @ Wed, 04 Oct 2017 15:33:17:  41000000 
INFO  @ Wed, 04 Oct 2017 15:33:20:  42000000 
INFO  @ Wed, 04 Oct 2017 15:33:23:  43000000 
INFO  @ Wed, 04 Oct 2017 15:33:27:  44000000 
INFO  @ Wed, 04 Oct 2017 15:33:30:  45000000 
INFO  @ Wed, 04 Oct 2017 15:33:33:  46000000 
INFO  @ Wed, 04 Oct 2017 15:33:36:  47000000 
INFO  @ Wed, 04 Oct 2017 15:33:40:  48000000 
INFO  @ Wed, 04 Oct 2017 15:33:43:  49000000 
INFO  @ Wed, 04 Oct 2017 15:33:46:  50000000 
INFO  @ Wed, 04 Oct 2017 15:33:49:  51000000 
INFO  @ Wed, 04 Oct 2017 15:33:52:  52000000 
INFO  @ Wed, 04 Oct 2017 15:33:55:  53000000 
INFO  @ Wed, 04 Oct 2017 15:33:59:  54000000 
INFO  @ Wed, 04 Oct 2017 15:34:02:  55000000 
INFO  @ Wed, 04 Oct 2017 15:34:05:  56000000 
INFO  @ Wed, 04 Oct 2017 15:34:08:  57000000 
INFO  @ Wed, 04 Oct 2017 15:34:11:  58000000 
INFO  @ Wed, 04 Oct 2017 15:34:14:  59000000 
INFO  @ Wed, 04 Oct 2017 15:34:17:  60000000 
INFO  @ Wed, 04 Oct 2017 15:34:20:  61000000 
INFO  @ Wed, 04 Oct 2017 15:34:23:  62000000 
INFO  @ Wed, 04 Oct 2017 15:34:26:  63000000 
INFO  @ Wed, 04 Oct 2017 15:34:29:  64000000 
INFO  @ Wed, 04 Oct 2017 15:34:35:  65000000 
INFO  @ Wed, 04 Oct 2017 15:34:38:  66000000 
INFO  @ Wed, 04 Oct 2017 15:34:41:  67000000 
INFO  @ Wed, 04 Oct 2017 15:34:44:  68000000 
INFO  @ Wed, 04 Oct 2017 15:34:47:  69000000 
INFO  @ Wed, 04 Oct 2017 15:34:50:  70000000 
INFO  @ Wed, 04 Oct 2017 15:34:53:  71000000 
INFO  @ Wed, 04 Oct 2017 15:34:56:  72000000 
INFO  @ Wed, 04 Oct 2017 15:34:59:  73000000 
INFO  @ Wed, 04 Oct 2017 15:35:01:  74000000 
INFO  @ Wed, 04 Oct 2017 15:35:04:  75000000 
INFO  @ Wed, 04 Oct 2017 15:35:07:  76000000 
INFO  @ Wed, 04 Oct 2017 15:35:11:  77000000 
INFO  @ Wed, 04 Oct 2017 15:35:14:  78000000 
INFO  @ Wed, 04 Oct 2017 15:35:17:  79000000 
INFO  @ Wed, 04 Oct 2017 15:35:20:  80000000 
INFO  @ Wed, 04 Oct 2017 15:35:23:  81000000 
INFO  @ Wed, 04 Oct 2017 15:35:26:  82000000 
INFO  @ Wed, 04 Oct 2017 15:35:29:  83000000 
INFO  @ Wed, 04 Oct 2017 15:35:32:  84000000 
INFO  @ Wed, 04 Oct 2017 15:35:35:  85000000 
INFO  @ Wed, 04 Oct 2017 15:35:38:  86000000 
INFO  @ Wed, 04 Oct 2017 15:35:41:  87000000 
INFO  @ Wed, 04 Oct 2017 15:35:44:  88000000 
INFO  @ Wed, 04 Oct 2017 15:35:47:  89000000 
INFO  @ Wed, 04 Oct 2017 15:35:50:  90000000 
INFO  @ Wed, 04 Oct 2017 15:35:53:  91000000 
INFO  @ Wed, 04 Oct 2017 15:35:56:  92000000 
INFO  @ Wed, 04 Oct 2017 15:35:59:  93000000 
INFO  @ Wed, 04 Oct 2017 15:36:02:  94000000 
INFO  @ Wed, 04 Oct 2017 15:36:05:  95000000 
INFO  @ Wed, 04 Oct 2017 15:36:08:  96000000 
INFO  @ Wed, 04 Oct 2017 15:36:11:  97000000 
INFO  @ Wed, 04 Oct 2017 15:36:14:  98000000 
INFO  @ Wed, 04 Oct 2017 15:36:17:  99000000 
INFO  @ Wed, 04 Oct 2017 15:36:20:  100000000 
INFO  @ Wed, 04 Oct 2017 15:36:23:  101000000 
INFO  @ Wed, 04 Oct 2017 15:36:26:  102000000 
INFO  @ Wed, 04 Oct 2017 15:36:29:  103000000 
INFO  @ Wed, 04 Oct 2017 15:36:32:  104000000 
INFO  @ Wed, 04 Oct 2017 15:36:35:  105000000 
INFO  @ Wed, 04 Oct 2017 15:36:38:  106000000 
INFO  @ Wed, 04 Oct 2017 15:36:43: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 15:36:43: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 15:36:43: #1  total tags in treatment: 106181400 
INFO  @ Wed, 04 Oct 2017 15:36:43: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 15:36:43: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 15:36:53: #1  tags after filtering in treatment: 80276587 
INFO  @ Wed, 04 Oct 2017 15:36:53: #1  Redundant rate of treatment: 0.24 
INFO  @ Wed, 04 Oct 2017 15:36:53: #1 finished! 
INFO  @ Wed, 04 Oct 2017 15:36:53: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 15:36:53: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 15:36:53: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 15:36:53: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 15:36:53: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 15:43:06: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 15:48:11: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 15:48:14: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 15:48:15: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 15:48:15: Done! 
</pre>
Process 29227 returned: (0). Elapsed: 0:17:34. Peak memory: (Process: 1.134GB; Pipeline: 1.378GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 15:48:50 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 15:48:50 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 15:48:53	MarkDuplicates	Start of doWork freeMemory: 503974408; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 15:48:53	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 15:48:53	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 15:49:13	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:19s.  Time for last 1,000,000:   19s.  Last read position: chr1:15,966,091
INFO	2017-10-04 15:49:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:49:28	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:34s.  Time for last 1,000,000:   14s.  Last read position: chr1:31,730,483
INFO	2017-10-04 15:49:28	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:49:41	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:47s.  Time for last 1,000,000:   13s.  Last read position: chr1:49,318,357
INFO	2017-10-04 15:49:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:49:57	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:01:03s.  Time for last 1,000,000:   15s.  Last read position: chr1:70,493,161
INFO	2017-10-04 15:49:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:50:14	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:01:20s.  Time for last 1,000,000:   17s.  Last read position: chr1:94,394,655
INFO	2017-10-04 15:50:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:50:21	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:27s.  Time for last 1,000,000:    7s.  Last read position: chr1:117,106,919
INFO	2017-10-04 15:50:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:50:42	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:48s.  Time for last 1,000,000:   20s.  Last read position: chr1:162,273,462
INFO	2017-10-04 15:50:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:50:57	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:02:03s.  Time for last 1,000,000:   15s.  Last read position: chr1:183,730,208
INFO	2017-10-04 15:50:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:51:06	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:02:12s.  Time for last 1,000,000:    8s.  Last read position: chr1:205,527,751
INFO	2017-10-04 15:51:06	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 15:51:16	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:02:22s.  Time for last 1,000,000:    9s.  Last read position: chr1:226,630,334
INFO	2017-10-04 15:51:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:51:26	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:02:32s.  Time for last 1,000,000:   10s.  Last read position: chr1:246,779,870
INFO	2017-10-04 15:51:26	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 15:51:39	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:45s.  Time for last 1,000,000:   12s.  Last read position: chr2:17,971,981
INFO	2017-10-04 15:51:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:51:49	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:55s.  Time for last 1,000,000:    9s.  Last read position: chr2:37,672,267
INFO	2017-10-04 15:51:49	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-04 15:52:06	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:03:12s.  Time for last 1,000,000:   17s.  Last read position: chr2:58,893,665
INFO	2017-10-04 15:52:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:52:14	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:03:20s.  Time for last 1,000,000:    8s.  Last read position: chr2:79,795,058
INFO	2017-10-04 15:52:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:52:23	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:03:29s.  Time for last 1,000,000:    8s.  Last read position: chr2:107,575,086
INFO	2017-10-04 15:52:23	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:52:34	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:40s.  Time for last 1,000,000:   10s.  Last read position: chr2:129,892,634
INFO	2017-10-04 15:52:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:52:47	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:03:53s.  Time for last 1,000,000:   13s.  Last read position: chr2:155,162,011
INFO	2017-10-04 15:52:47	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 15:52:56	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:03s.  Time for last 1,000,000:    9s.  Last read position: chr2:178,331,079
INFO	2017-10-04 15:52:56	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:53:06	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:04:12s.  Time for last 1,000,000:    9s.  Last read position: chr2:202,558,542
INFO	2017-10-04 15:53:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:53:23	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:04:29s.  Time for last 1,000,000:   17s.  Last read position: chr2:222,291,216
INFO	2017-10-04 15:53:23	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:53:32	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:04:38s.  Time for last 1,000,000:    8s.  Last read position: chr2:240,566,610
INFO	2017-10-04 15:53:32	MarkDuplicates	Tracking 20 as yet unmatched pairs. 20 records in RAM.
INFO	2017-10-04 15:53:40	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:04:46s.  Time for last 1,000,000:    8s.  Last read position: chr3:17,809,773
INFO	2017-10-04 15:53:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:53:52	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:04:58s.  Time for last 1,000,000:   11s.  Last read position: chr3:40,423,253
INFO	2017-10-04 15:53:52	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 15:54:05	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:05:12s.  Time for last 1,000,000:   13s.  Last read position: chr3:57,949,300
INFO	2017-10-04 15:54:05	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 15:54:16	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:05:22s.  Time for last 1,000,000:   10s.  Last read position: chr3:80,402,068
INFO	2017-10-04 15:54:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:54:26	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:05:32s.  Time for last 1,000,000:   10s.  Last read position: chr3:108,361,819
INFO	2017-10-04 15:54:26	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:54:42	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:05:49s.  Time for last 1,000,000:   16s.  Last read position: chr3:128,689,288
INFO	2017-10-04 15:54:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:54:51	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:05:57s.  Time for last 1,000,000:    8s.  Last read position: chr3:150,408,264
INFO	2017-10-04 15:54:51	MarkDuplicates	Tracking 46 as yet unmatched pairs. 46 records in RAM.
INFO	2017-10-04 15:55:00	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:06:06s.  Time for last 1,000,000:    8s.  Last read position: chr3:174,049,789
INFO	2017-10-04 15:55:00	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 15:55:10	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:06:16s.  Time for last 1,000,000:   10s.  Last read position: chr3:195,433,794
INFO	2017-10-04 15:55:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:55:24	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:06:31s.  Time for last 1,000,000:   14s.  Last read position: chr4:16,041,227
INFO	2017-10-04 15:55:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:55:34	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:06:40s.  Time for last 1,000,000:    9s.  Last read position: chr4:39,383,951
INFO	2017-10-04 15:55:34	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:55:45	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:06:51s.  Time for last 1,000,000:   10s.  Last read position: chr4:66,417,663
INFO	2017-10-04 15:55:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:56:01	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:07:07s.  Time for last 1,000,000:   16s.  Last read position: chr4:89,988,651
INFO	2017-10-04 15:56:01	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:56:10	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:07:16s.  Time for last 1,000,000:    8s.  Last read position: chr4:114,673,600
INFO	2017-10-04 15:56:10	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 15:56:19	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:07:26s.  Time for last 1,000,000:    9s.  Last read position: chr4:139,905,045
INFO	2017-10-04 15:56:19	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:56:29	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:07:35s.  Time for last 1,000,000:    9s.  Last read position: chr4:163,064,020
INFO	2017-10-04 15:56:29	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 15:56:40	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:07:47s.  Time for last 1,000,000:   11s.  Last read position: chr4:185,940,631
INFO	2017-10-04 15:56:40	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:56:51	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:07:58s.  Time for last 1,000,000:   10s.  Last read position: chr5:16,863,467
INFO	2017-10-04 15:56:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:57:01	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:08:07s.  Time for last 1,000,000:    9s.  Last read position: chr5:42,183,578
INFO	2017-10-04 15:57:01	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:57:16	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:08:22s.  Time for last 1,000,000:   15s.  Last read position: chr5:69,332,846
INFO	2017-10-04 15:57:16	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 15:57:24	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:08:31s.  Time for last 1,000,000:    8s.  Last read position: chr5:94,888,758
INFO	2017-10-04 15:57:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:57:33	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:08:39s.  Time for last 1,000,000:    8s.  Last read position: chr5:119,389,531
INFO	2017-10-04 15:57:33	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 15:57:47	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:08:53s.  Time for last 1,000,000:   14s.  Last read position: chr5:140,350,230
INFO	2017-10-04 15:57:47	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:57:54	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:09:01s.  Time for last 1,000,000:    7s.  Last read position: chr5:159,652,841
INFO	2017-10-04 15:57:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:58:03	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:09:09s.  Time for last 1,000,000:    8s.  Last read position: chr5:179,550,087
INFO	2017-10-04 15:58:03	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 15:58:12	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:09:18s.  Time for last 1,000,000:    9s.  Last read position: chr6:17,724,858
INFO	2017-10-04 15:58:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:58:29	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:09:35s.  Time for last 1,000,000:   16s.  Last read position: chr6:36,145,306
INFO	2017-10-04 15:58:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:58:38	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:09:44s.  Time for last 1,000,000:    8s.  Last read position: chr6:56,087,262
INFO	2017-10-04 15:58:38	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:58:47	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:09:53s.  Time for last 1,000,000:    9s.  Last read position: chr6:84,357,925
INFO	2017-10-04 15:58:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:58:59	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:10:05s.  Time for last 1,000,000:   12s.  Last read position: chr6:108,712,909
INFO	2017-10-04 15:58:59	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:59:06	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:10:13s.  Time for last 1,000,000:    7s.  Last read position: chr6:132,209,347
INFO	2017-10-04 15:59:06	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 15:59:17	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:10:23s.  Time for last 1,000,000:   10s.  Last read position: chr6:154,522,312
INFO	2017-10-04 15:59:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:59:25	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:10:31s.  Time for last 1,000,000:    7s.  Last read position: chr7:2,232,279
INFO	2017-10-04 15:59:25	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 15:59:40	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:10:46s.  Time for last 1,000,000:   15s.  Last read position: chr7:24,595,896
INFO	2017-10-04 15:59:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 15:59:49	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:10:55s.  Time for last 1,000,000:    9s.  Last read position: chr7:45,063,811
INFO	2017-10-04 15:59:49	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 15:59:58	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:11:04s.  Time for last 1,000,000:    8s.  Last read position: chr7:73,522,580
INFO	2017-10-04 15:59:58	MarkDuplicates	Tracking 98 as yet unmatched pairs. 98 records in RAM.
INFO	2017-10-04 16:00:09	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:11:16s.  Time for last 1,000,000:   11s.  Last read position: chr7:97,317,920
INFO	2017-10-04 16:00:09	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:00:21	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:11:27s.  Time for last 1,000,000:   11s.  Last read position: chr7:118,996,567
INFO	2017-10-04 16:00:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:00:29	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:11:35s.  Time for last 1,000,000:    8s.  Last read position: chr7:140,696,836
INFO	2017-10-04 16:00:29	MarkDuplicates	Tracking 76 as yet unmatched pairs. 76 records in RAM.
INFO	2017-10-04 16:00:37	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:11:44s.  Time for last 1,000,000:    8s.  Last read position: chr8:1,878,603
INFO	2017-10-04 16:00:37	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:00:54	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:12:00s.  Time for last 1,000,000:   16s.  Last read position: chr8:24,406,618
INFO	2017-10-04 16:00:54	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:01:04	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:12:10s.  Time for last 1,000,000:    9s.  Last read position: chr8:46,937,566
INFO	2017-10-04 16:01:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:01:14	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:12:20s.  Time for last 1,000,000:   10s.  Last read position: chr8:70,373,892
INFO	2017-10-04 16:01:14	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:01:26	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:12:32s.  Time for last 1,000,000:   11s.  Last read position: chr8:94,896,639
INFO	2017-10-04 16:01:26	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:01:35	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:12:42s.  Time for last 1,000,000:    9s.  Last read position: chr8:117,953,018
INFO	2017-10-04 16:01:35	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:01:45	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:12:51s.  Time for last 1,000,000:    9s.  Last read position: chr8:138,910,081
INFO	2017-10-04 16:01:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:01:53	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:13:00s.  Time for last 1,000,000:    8s.  Last read position: chr9:12,609,924
INFO	2017-10-04 16:01:53	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:02:19	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:13:25s.  Time for last 1,000,000:   25s.  Last read position: chr9:35,616,997
INFO	2017-10-04 16:02:19	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:02:27	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:13:33s.  Time for last 1,000,000:    8s.  Last read position: chr9:85,583,083
INFO	2017-10-04 16:02:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:02:39	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:13:46s.  Time for last 1,000,000:   12s.  Last read position: chr9:105,892,139
INFO	2017-10-04 16:02:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:02:56	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:14:02s.  Time for last 1,000,000:   16s.  Last read position: chr9:125,692,058
INFO	2017-10-04 16:02:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:03:09	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:14:15s.  Time for last 1,000,000:   12s.  Last read position: chr10:664,026
INFO	2017-10-04 16:03:09	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:03:18	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:14:24s.  Time for last 1,000,000:    9s.  Last read position: chr10:22,315,981
INFO	2017-10-04 16:03:18	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 16:03:27	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:14:33s.  Time for last 1,000,000:    8s.  Last read position: chr10:47,368,292
INFO	2017-10-04 16:03:27	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:03:43	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:14:49s.  Time for last 1,000,000:   15s.  Last read position: chr10:70,939,470
INFO	2017-10-04 16:03:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:03:51	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:14:58s.  Time for last 1,000,000:    8s.  Last read position: chr10:89,592,981
INFO	2017-10-04 16:03:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:04:04	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:15:10s.  Time for last 1,000,000:   12s.  Last read position: chr10:108,984,596
INFO	2017-10-04 16:04:04	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:04:15	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:15:21s.  Time for last 1,000,000:   11s.  Last read position: chr10:127,793,983
INFO	2017-10-04 16:04:15	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:04:24	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:15:31s.  Time for last 1,000,000:    9s.  Last read position: chr11:10,619,257
INFO	2017-10-04 16:04:24	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:04:33	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:15:40s.  Time for last 1,000,000:    9s.  Last read position: chr11:31,959,574
INFO	2017-10-04 16:04:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:04:43	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:15:49s.  Time for last 1,000,000:    9s.  Last read position: chr11:57,951,942
INFO	2017-10-04 16:04:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:04:57	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:16:04s.  Time for last 1,000,000:   14s.  Last read position: chr11:72,228,264
INFO	2017-10-04 16:04:57	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 16:05:07	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:16:13s.  Time for last 1,000,000:    9s.  Last read position: chr11:93,966,489
INFO	2017-10-04 16:05:07	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:05:16	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:16:22s.  Time for last 1,000,000:    9s.  Last read position: chr11:116,170,666
INFO	2017-10-04 16:05:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:05:28	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:16:35s.  Time for last 1,000,000:   12s.  Last read position: chr11:134,033,922
INFO	2017-10-04 16:05:28	MarkDuplicates	Tracking 76 as yet unmatched pairs. 76 records in RAM.
INFO	2017-10-04 16:05:36	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:16:42s.  Time for last 1,000,000:    7s.  Last read position: chr12:18,146,369
INFO	2017-10-04 16:05:36	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:05:45	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:16:51s.  Time for last 1,000,000:    9s.  Last read position: chr12:45,157,508
INFO	2017-10-04 16:05:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:06:01	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:17:08s.  Time for last 1,000,000:   16s.  Last read position: chr12:62,871,709
INFO	2017-10-04 16:06:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:06:09	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:17:15s.  Time for last 1,000,000:    7s.  Last read position: chr12:87,473,490
INFO	2017-10-04 16:06:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:06:18	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:17:24s.  Time for last 1,000,000:    9s.  Last read position: chr12:108,808,166
INFO	2017-10-04 16:06:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:06:28	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:17:34s.  Time for last 1,000,000:    9s.  Last read position: chr12:125,983,850
INFO	2017-10-04 16:06:28	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 16:06:39	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:17:45s.  Time for last 1,000,000:   11s.  Last read position: chr13:31,441,878
INFO	2017-10-04 16:06:39	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:06:48	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:17:54s.  Time for last 1,000,000:    9s.  Last read position: chr13:53,326,531
INFO	2017-10-04 16:06:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:06:56	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:18:02s.  Time for last 1,000,000:    8s.  Last read position: chr13:79,273,932
INFO	2017-10-04 16:06:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:07:12	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:18:18s.  Time for last 1,000,000:   16s.  Last read position: chr13:103,612,368
INFO	2017-10-04 16:07:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:07:22	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:18:28s.  Time for last 1,000,000:    9s.  Last read position: chr14:28,588,475
INFO	2017-10-04 16:07:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:07:31	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:18:37s.  Time for last 1,000,000:    8s.  Last read position: chr14:52,912,782
INFO	2017-10-04 16:07:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:07:38	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:18:44s.  Time for last 1,000,000:    7s.  Last read position: chr14:73,493,876
INFO	2017-10-04 16:07:38	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:07:49	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:18:55s.  Time for last 1,000,000:   11s.  Last read position: chr14:93,797,592
INFO	2017-10-04 16:07:49	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:07:59	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:19:05s.  Time for last 1,000,000:    9s.  Last read position: chr15:27,107,449
INFO	2017-10-04 16:07:59	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:08:08	MarkDuplicates	Read   103,000,000 records.  Elapsed time: 00:19:14s.  Time for last 1,000,000:    8s.  Last read position: chr15:49,561,329
INFO	2017-10-04 16:08:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:08:24	MarkDuplicates	Read   104,000,000 records.  Elapsed time: 00:19:30s.  Time for last 1,000,000:   16s.  Last read position: chr15:70,062,977
INFO	2017-10-04 16:08:24	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:08:34	MarkDuplicates	Read   105,000,000 records.  Elapsed time: 00:19:40s.  Time for last 1,000,000:    9s.  Last read position: chr15:89,958,670
INFO	2017-10-04 16:08:34	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:08:42	MarkDuplicates	Read   106,000,000 records.  Elapsed time: 00:19:48s.  Time for last 1,000,000:    8s.  Last read position: chr16:4,362,559
INFO	2017-10-04 16:08:42	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 16:08:51	MarkDuplicates	Read   107,000,000 records.  Elapsed time: 00:19:57s.  Time for last 1,000,000:    8s.  Last read position: chr16:25,553,720
INFO	2017-10-04 16:08:51	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:09:03	MarkDuplicates	Read   108,000,000 records.  Elapsed time: 00:20:09s.  Time for last 1,000,000:   11s.  Last read position: chr16:57,447,433
INFO	2017-10-04 16:09:03	MarkDuplicates	Tracking 32 as yet unmatched pairs. 32 records in RAM.
INFO	2017-10-04 16:09:12	MarkDuplicates	Read   109,000,000 records.  Elapsed time: 00:20:18s.  Time for last 1,000,000:    9s.  Last read position: chr16:78,080,412
INFO	2017-10-04 16:09:12	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:09:21	MarkDuplicates	Read   110,000,000 records.  Elapsed time: 00:20:28s.  Time for last 1,000,000:    9s.  Last read position: chr17:3,365,429
INFO	2017-10-04 16:09:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:09:40	MarkDuplicates	Read   111,000,000 records.  Elapsed time: 00:20:46s.  Time for last 1,000,000:   18s.  Last read position: chr17:21,203,145
INFO	2017-10-04 16:09:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:09:49	MarkDuplicates	Read   112,000,000 records.  Elapsed time: 00:20:55s.  Time for last 1,000,000:    9s.  Last read position: chr17:43,696,844
INFO	2017-10-04 16:09:49	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:09:58	MarkDuplicates	Read   113,000,000 records.  Elapsed time: 00:21:05s.  Time for last 1,000,000:    9s.  Last read position: chr17:62,240,698
INFO	2017-10-04 16:09:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:10:08	MarkDuplicates	Read   114,000,000 records.  Elapsed time: 00:21:14s.  Time for last 1,000,000:    9s.  Last read position: chr17:79,603,751
INFO	2017-10-04 16:10:08	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 16:10:18	MarkDuplicates	Read   115,000,000 records.  Elapsed time: 00:21:25s.  Time for last 1,000,000:   10s.  Last read position: chr18:14,132,596
INFO	2017-10-04 16:10:18	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 16:10:26	MarkDuplicates	Read   116,000,000 records.  Elapsed time: 00:21:33s.  Time for last 1,000,000:    7s.  Last read position: chr18:43,368,511
INFO	2017-10-04 16:10:26	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:10:36	MarkDuplicates	Read   117,000,000 records.  Elapsed time: 00:21:42s.  Time for last 1,000,000:    9s.  Last read position: chr18:64,264,395
INFO	2017-10-04 16:10:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:10:51	MarkDuplicates	Read   118,000,000 records.  Elapsed time: 00:21:57s.  Time for last 1,000,000:   14s.  Last read position: chr19:2,748,067
INFO	2017-10-04 16:10:51	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:11:00	MarkDuplicates	Read   119,000,000 records.  Elapsed time: 00:22:06s.  Time for last 1,000,000:    9s.  Last read position: chr19:16,111,454
INFO	2017-10-04 16:11:00	MarkDuplicates	Tracking 66 as yet unmatched pairs. 66 records in RAM.
INFO	2017-10-04 16:11:08	MarkDuplicates	Read   120,000,000 records.  Elapsed time: 00:22:15s.  Time for last 1,000,000:    8s.  Last read position: chr19:37,777,563
INFO	2017-10-04 16:11:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:11:16	MarkDuplicates	Read   121,000,000 records.  Elapsed time: 00:22:23s.  Time for last 1,000,000:    8s.  Last read position: chr19:51,688,930
INFO	2017-10-04 16:11:16	MarkDuplicates	Tracking 38 as yet unmatched pairs. 38 records in RAM.
INFO	2017-10-04 16:11:27	MarkDuplicates	Read   122,000,000 records.  Elapsed time: 00:22:34s.  Time for last 1,000,000:   10s.  Last read position: chr20:11,956,941
INFO	2017-10-04 16:11:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:11:36	MarkDuplicates	Read   123,000,000 records.  Elapsed time: 00:22:42s.  Time for last 1,000,000:    8s.  Last read position: chr20:35,951,110
INFO	2017-10-04 16:11:36	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:11:48	MarkDuplicates	Read   124,000,000 records.  Elapsed time: 00:22:54s.  Time for last 1,000,000:   12s.  Last read position: chr20:53,593,180
INFO	2017-10-04 16:11:48	MarkDuplicates	Tracking 24 as yet unmatched pairs. 24 records in RAM.
INFO	2017-10-04 16:12:03	MarkDuplicates	Read   125,000,000 records.  Elapsed time: 00:23:09s.  Time for last 1,000,000:   15s.  Last read position: chr21:21,583,653
INFO	2017-10-04 16:12:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:12:12	MarkDuplicates	Read   126,000,000 records.  Elapsed time: 00:23:18s.  Time for last 1,000,000:    9s.  Last read position: chr21:42,798,481
INFO	2017-10-04 16:12:12	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:12:21	MarkDuplicates	Read   127,000,000 records.  Elapsed time: 00:23:27s.  Time for last 1,000,000:    8s.  Last read position: chr22:30,447,449
INFO	2017-10-04 16:12:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:12:32	MarkDuplicates	Read   128,000,000 records.  Elapsed time: 00:23:39s.  Time for last 1,000,000:   11s.  Last read position: chr22:45,550,265
INFO	2017-10-04 16:12:32	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 16:12:43	MarkDuplicates	Read   129,000,000 records.  Elapsed time: 00:23:49s.  Time for last 1,000,000:   10s.  Last read position: chrX:26,426,230
INFO	2017-10-04 16:12:43	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:12:50	MarkDuplicates	Read   130,000,000 records.  Elapsed time: 00:23:57s.  Time for last 1,000,000:    7s.  Last read position: chrX:77,861,456
INFO	2017-10-04 16:12:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:13:01	MarkDuplicates	Read   131,000,000 records.  Elapsed time: 00:24:07s.  Time for last 1,000,000:   10s.  Last read position: chrX:129,697,765
INFO	2017-10-04 16:13:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 16:13:16	MarkDuplicates	Read   132,000,000 records.  Elapsed time: 00:24:22s.  Time for last 1,000,000:   14s.  Last read position: chrUn_KI270435v1:9,565
INFO	2017-10-04 16:13:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 16:13:17	MarkDuplicates	Read 132062620 records. 0 pairs never matched.
INFO	2017-10-04 16:13:18	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1036494304; totalMemory: 1046478848; maxMemory: 1046478848
INFO	2017-10-04 16:13:18	MarkDuplicates	Will retain up to 32702464 duplicate indices before spilling to disk.
INFO	2017-10-04 16:13:18	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 16:13:55	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 16:14:57	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 16:14:57	MarkDuplicates	After generateDuplicateIndexes freeMemory: 798079488; totalMemory: 1069547520; maxMemory: 1069547520
INFO	2017-10-04 16:14:57	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 16:14:57	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 16:14:57	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 16:17:25	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:27s.  Time for last 10,000,000:  147s.  Last read position: chr1:226,630,334
INFO	2017-10-04 16:20:08	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:05:10s.  Time for last 10,000,000:  162s.  Last read position: chr2:202,558,542
INFO	2017-10-04 16:22:42	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:07:44s.  Time for last 10,000,000:  153s.  Last read position: chr3:174,049,789
INFO	2017-10-04 16:25:13	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:10:15s.  Time for last 10,000,000:  150s.  Last read position: chr5:16,863,467
INFO	2017-10-04 16:27:52	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:12:54s.  Time for last 10,000,000:  159s.  Last read position: chr6:56,087,262
INFO	2017-10-04 16:30:25	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:15:27s.  Time for last 10,000,000:  153s.  Last read position: chr7:118,996,567
INFO	2017-10-04 16:32:59	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:18:02s.  Time for last 10,000,000:  154s.  Last read position: chr9:35,616,997
INFO	2017-10-04 16:35:33	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:20:36s.  Time for last 10,000,000:  154s.  Last read position: chr10:127,793,983
INFO	2017-10-04 16:38:08	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:23:11s.  Time for last 10,000,000:  154s.  Last read position: chr12:62,871,709
INFO	2017-10-04 16:40:48	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:25:51s.  Time for last 10,000,000:  160s.  Last read position: chr14:73,493,876
INFO	2017-10-04 16:43:04	MarkDuplicates	Written   110,000,000 records.  Elapsed time: 00:28:06s.  Time for last 10,000,000:  135s.  Last read position: chr17:3,365,429
INFO	2017-10-04 16:45:22	MarkDuplicates	Written   120,000,000 records.  Elapsed time: 00:30:24s.  Time for last 10,000,000:  138s.  Last read position: chr19:37,777,563
INFO	2017-10-04 16:47:38	MarkDuplicates	Written   130,000,000 records.  Elapsed time: 00:32:41s.  Time for last 10,000,000:  136s.  Last read position: chrX:77,861,456
INFO	2017-10-04 16:48:08	MarkDuplicates	Before output close freeMemory: 1022206656; totalMemory: 1031798784; maxMemory: 1031798784
INFO	2017-10-04 16:48:08	MarkDuplicates	After output close freeMemory: 1022193112; totalMemory: 1031798784; maxMemory: 1031798784
[Wed Oct 04 16:48:08 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 59.31 minutes.
Runtime.totalMemory()=1031798784
</pre>
Process 30432 returned: (0). Elapsed: 0:59:36.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`

<pre>
</pre>
Process 33641 returned: (0). Elapsed: 0:06:33. Peak memory: (Process: 0.021GB; Pipeline: 1.378GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 33843 returned: (0). Elapsed: 0:20:34. Peak memory: (Process: 0.002GB; Pipeline: 1.378GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n colon_2.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 17:15:26: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n colon_2.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = colon_2.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 17:15:26: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 17:15:26: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 17:15:28:  1000000 
INFO  @ Wed, 04 Oct 2017 17:15:31:  2000000 
INFO  @ Wed, 04 Oct 2017 17:15:33:  3000000 
INFO  @ Wed, 04 Oct 2017 17:15:35:  4000000 
INFO  @ Wed, 04 Oct 2017 17:15:37:  5000000 
INFO  @ Wed, 04 Oct 2017 17:15:39:  6000000 
INFO  @ Wed, 04 Oct 2017 17:15:42:  7000000 
INFO  @ Wed, 04 Oct 2017 17:15:44:  8000000 
INFO  @ Wed, 04 Oct 2017 17:15:46:  9000000 
INFO  @ Wed, 04 Oct 2017 17:15:48:  10000000 
INFO  @ Wed, 04 Oct 2017 17:15:51:  11000000 
INFO  @ Wed, 04 Oct 2017 17:15:53:  12000000 
INFO  @ Wed, 04 Oct 2017 17:15:55:  13000000 
INFO  @ Wed, 04 Oct 2017 17:15:57:  14000000 
INFO  @ Wed, 04 Oct 2017 17:15:59:  15000000 
INFO  @ Wed, 04 Oct 2017 17:16:02:  16000000 
INFO  @ Wed, 04 Oct 2017 17:16:04:  17000000 
INFO  @ Wed, 04 Oct 2017 17:16:06:  18000000 
INFO  @ Wed, 04 Oct 2017 17:16:09:  19000000 
INFO  @ Wed, 04 Oct 2017 17:16:11:  20000000 
INFO  @ Wed, 04 Oct 2017 17:16:13:  21000000 
INFO  @ Wed, 04 Oct 2017 17:16:15:  22000000 
INFO  @ Wed, 04 Oct 2017 17:16:17:  23000000 
INFO  @ Wed, 04 Oct 2017 17:16:20:  24000000 
INFO  @ Wed, 04 Oct 2017 17:16:22:  25000000 
INFO  @ Wed, 04 Oct 2017 17:16:24:  26000000 
INFO  @ Wed, 04 Oct 2017 17:16:26:  27000000 
INFO  @ Wed, 04 Oct 2017 17:16:28:  28000000 
INFO  @ Wed, 04 Oct 2017 17:16:30:  29000000 
INFO  @ Wed, 04 Oct 2017 17:16:33:  30000000 
INFO  @ Wed, 04 Oct 2017 17:16:35:  31000000 
INFO  @ Wed, 04 Oct 2017 17:16:37:  32000000 
INFO  @ Wed, 04 Oct 2017 17:16:39:  33000000 
INFO  @ Wed, 04 Oct 2017 17:16:42:  34000000 
INFO  @ Wed, 04 Oct 2017 17:16:44:  35000000 
INFO  @ Wed, 04 Oct 2017 17:16:46:  36000000 
INFO  @ Wed, 04 Oct 2017 17:16:48:  37000000 
INFO  @ Wed, 04 Oct 2017 17:16:50:  38000000 
INFO  @ Wed, 04 Oct 2017 17:16:53:  39000000 
INFO  @ Wed, 04 Oct 2017 17:16:55:  40000000 
INFO  @ Wed, 04 Oct 2017 17:16:57:  41000000 
INFO  @ Wed, 04 Oct 2017 17:16:59:  42000000 
INFO  @ Wed, 04 Oct 2017 17:17:02:  43000000 
INFO  @ Wed, 04 Oct 2017 17:17:04:  44000000 
INFO  @ Wed, 04 Oct 2017 17:17:07:  45000000 
INFO  @ Wed, 04 Oct 2017 17:17:09:  46000000 
INFO  @ Wed, 04 Oct 2017 17:17:12:  47000000 
INFO  @ Wed, 04 Oct 2017 17:17:14:  48000000 
INFO  @ Wed, 04 Oct 2017 17:17:16:  49000000 
INFO  @ Wed, 04 Oct 2017 17:17:18:  50000000 
INFO  @ Wed, 04 Oct 2017 17:17:21:  51000000 
INFO  @ Wed, 04 Oct 2017 17:17:23:  52000000 
INFO  @ Wed, 04 Oct 2017 17:17:25:  53000000 
INFO  @ Wed, 04 Oct 2017 17:17:27:  54000000 
INFO  @ Wed, 04 Oct 2017 17:17:29:  55000000 
INFO  @ Wed, 04 Oct 2017 17:17:32:  56000000 
INFO  @ Wed, 04 Oct 2017 17:17:34:  57000000 
INFO  @ Wed, 04 Oct 2017 17:17:36:  58000000 
INFO  @ Wed, 04 Oct 2017 17:17:38:  59000000 
INFO  @ Wed, 04 Oct 2017 17:17:41:  60000000 
INFO  @ Wed, 04 Oct 2017 17:17:43:  61000000 
INFO  @ Wed, 04 Oct 2017 17:17:45:  62000000 
INFO  @ Wed, 04 Oct 2017 17:17:47:  63000000 
INFO  @ Wed, 04 Oct 2017 17:17:50:  64000000 
INFO  @ Wed, 04 Oct 2017 17:17:52:  65000000 
INFO  @ Wed, 04 Oct 2017 17:17:54:  66000000 
INFO  @ Wed, 04 Oct 2017 17:17:56:  67000000 
INFO  @ Wed, 04 Oct 2017 17:17:59:  68000000 
INFO  @ Wed, 04 Oct 2017 17:18:01:  69000000 
INFO  @ Wed, 04 Oct 2017 17:18:03:  70000000 
INFO  @ Wed, 04 Oct 2017 17:18:05:  71000000 
INFO  @ Wed, 04 Oct 2017 17:18:07:  72000000 
INFO  @ Wed, 04 Oct 2017 17:18:10:  73000000 
INFO  @ Wed, 04 Oct 2017 17:18:12:  74000000 
INFO  @ Wed, 04 Oct 2017 17:18:14:  75000000 
INFO  @ Wed, 04 Oct 2017 17:18:17:  76000000 
INFO  @ Wed, 04 Oct 2017 17:18:19:  77000000 
INFO  @ Wed, 04 Oct 2017 17:18:22:  78000000 
INFO  @ Wed, 04 Oct 2017 17:18:24:  79000000 
INFO  @ Wed, 04 Oct 2017 17:18:26:  80000000 
INFO  @ Wed, 04 Oct 2017 17:18:29:  81000000 
INFO  @ Wed, 04 Oct 2017 17:18:31:  82000000 
INFO  @ Wed, 04 Oct 2017 17:18:33:  83000000 
INFO  @ Wed, 04 Oct 2017 17:18:36:  84000000 
INFO  @ Wed, 04 Oct 2017 17:18:38:  85000000 
INFO  @ Wed, 04 Oct 2017 17:18:40:  86000000 
INFO  @ Wed, 04 Oct 2017 17:18:42:  87000000 
INFO  @ Wed, 04 Oct 2017 17:18:44:  88000000 
INFO  @ Wed, 04 Oct 2017 17:18:47:  89000000 
INFO  @ Wed, 04 Oct 2017 17:18:49:  90000000 
INFO  @ Wed, 04 Oct 2017 17:18:51:  91000000 
INFO  @ Wed, 04 Oct 2017 17:18:54:  92000000 
INFO  @ Wed, 04 Oct 2017 17:18:56:  93000000 
INFO  @ Wed, 04 Oct 2017 17:18:58:  94000000 
INFO  @ Wed, 04 Oct 2017 17:19:00:  95000000 
INFO  @ Wed, 04 Oct 2017 17:19:02:  96000000 
INFO  @ Wed, 04 Oct 2017 17:19:05:  97000000 
INFO  @ Wed, 04 Oct 2017 17:19:07:  98000000 
INFO  @ Wed, 04 Oct 2017 17:19:09:  99000000 
INFO  @ Wed, 04 Oct 2017 17:19:12:  100000000 
INFO  @ Wed, 04 Oct 2017 17:19:14:  101000000 
INFO  @ Wed, 04 Oct 2017 17:19:16:  102000000 
INFO  @ Wed, 04 Oct 2017 17:19:18:  103000000 
INFO  @ Wed, 04 Oct 2017 17:19:21:  104000000 
INFO  @ Wed, 04 Oct 2017 17:19:23:  105000000 
INFO  @ Wed, 04 Oct 2017 17:19:25:  106000000 
INFO  @ Wed, 04 Oct 2017 17:19:27:  107000000 
INFO  @ Wed, 04 Oct 2017 17:19:29:  108000000 
INFO  @ Wed, 04 Oct 2017 17:19:32:  109000000 
INFO  @ Wed, 04 Oct 2017 17:19:34:  110000000 
INFO  @ Wed, 04 Oct 2017 17:19:36:  111000000 
INFO  @ Wed, 04 Oct 2017 17:19:38:  112000000 
INFO  @ Wed, 04 Oct 2017 17:19:40:  113000000 
INFO  @ Wed, 04 Oct 2017 17:19:43:  114000000 
INFO  @ Wed, 04 Oct 2017 17:19:45:  115000000 
INFO  @ Wed, 04 Oct 2017 17:19:47:  116000000 
INFO  @ Wed, 04 Oct 2017 17:19:49:  117000000 
INFO  @ Wed, 04 Oct 2017 17:19:51:  118000000 
INFO  @ Wed, 04 Oct 2017 17:19:53:  119000000 
INFO  @ Wed, 04 Oct 2017 17:19:56:  120000000 
INFO  @ Wed, 04 Oct 2017 17:19:58:  121000000 
INFO  @ Wed, 04 Oct 2017 17:20:00:  122000000 
INFO  @ Wed, 04 Oct 2017 17:20:02:  123000000 
INFO  @ Wed, 04 Oct 2017 17:20:05:  124000000 
INFO  @ Wed, 04 Oct 2017 17:20:07:  125000000 
INFO  @ Wed, 04 Oct 2017 17:20:09:  126000000 
INFO  @ Wed, 04 Oct 2017 17:20:11:  127000000 
INFO  @ Wed, 04 Oct 2017 17:20:13:  128000000 
INFO  @ Wed, 04 Oct 2017 17:20:16:  129000000 
INFO  @ Wed, 04 Oct 2017 17:20:18:  130000000 
INFO  @ Wed, 04 Oct 2017 17:20:20:  131000000 
INFO  @ Wed, 04 Oct 2017 17:20:22:  132000000 
INFO  @ Wed, 04 Oct 2017 17:20:26: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 17:20:26: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 17:20:26: #1  total tags in treatment: 132062620 
INFO  @ Wed, 04 Oct 2017 17:20:26: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 17:20:26: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 17:20:30: #1  tags after filtering in treatment: 118258455 
INFO  @ Wed, 04 Oct 2017 17:20:30: #1  Redundant rate of treatment: 0.10 
INFO  @ Wed, 04 Oct 2017 17:20:30: #1 finished! 
INFO  @ Wed, 04 Oct 2017 17:20:30: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 17:20:30: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 17:20:30: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 17:20:30: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 17:20:30: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 17:26:43: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 17:30:59: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 17:31:00: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 17:31:00: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 17:31:01: Done! 
</pre>
Process 35160 returned: (0). Elapsed: 0:16:34. Peak memory: (Process: 1.421GB; Pipeline: 1.378GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 17:32:01 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 17:32:01 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 17:32:01	MarkDuplicates	Start of doWork freeMemory: 503974552; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 17:32:01	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 17:32:01	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 17:32:12	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:11s.  Time for last 1,000,000:   11s.  Last read position: chr1:53,685,870
INFO	2017-10-04 17:32:12	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:32:19	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:18s.  Time for last 1,000,000:    6s.  Last read position: chr1:112,955,780
INFO	2017-10-04 17:32:19	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 17:32:29	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:27s.  Time for last 1,000,000:    9s.  Last read position: chr1:198,909,887
INFO	2017-10-04 17:32:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:32:39	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:37s.  Time for last 1,000,000:   10s.  Last read position: chr2:3,442,938
INFO	2017-10-04 17:32:39	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:32:53	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:52s.  Time for last 1,000,000:   14s.  Last read position: chr2:58,671,649
INFO	2017-10-04 17:32:53	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:33:01	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:00s.  Time for last 1,000,000:    7s.  Last read position: chr2:123,690,362
INFO	2017-10-04 17:33:01	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:33:17	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:15s.  Time for last 1,000,000:   15s.  Last read position: chr2:182,099,046
INFO	2017-10-04 17:33:17	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:33:25	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:24s.  Time for last 1,000,000:    8s.  Last read position: chr2:238,016,635
INFO	2017-10-04 17:33:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:33:35	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:33s.  Time for last 1,000,000:    9s.  Last read position: chr3:49,903,351
INFO	2017-10-04 17:33:35	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 17:33:43	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:41s.  Time for last 1,000,000:    7s.  Last read position: chr3:111,869,440
INFO	2017-10-04 17:33:43	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:33:54	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:52s.  Time for last 1,000,000:   11s.  Last read position: chr3:168,951,269
INFO	2017-10-04 17:33:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:34:11	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:09s.  Time for last 1,000,000:   16s.  Last read position: chr4:26,088,245
INFO	2017-10-04 17:34:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:34:29	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:28s.  Time for last 1,000,000:   18s.  Last read position: chr4:90,127,387
INFO	2017-10-04 17:34:29	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 17:34:54	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:52s.  Time for last 1,000,000:   24s.  Last read position: chr4:152,108,536
INFO	2017-10-04 17:34:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:35:15	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:03:13s.  Time for last 1,000,000:   21s.  Last read position: chr5:18,362,731
INFO	2017-10-04 17:35:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:35:34	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:03:32s.  Time for last 1,000,000:   19s.  Last read position: chr5:85,708,981
INFO	2017-10-04 17:35:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:35:54	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:52s.  Time for last 1,000,000:   19s.  Last read position: chr5:144,411,922
INFO	2017-10-04 17:35:54	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:36:16	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:04:14s.  Time for last 1,000,000:   22s.  Last read position: chr6:16,559,439
INFO	2017-10-04 17:36:16	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:36:32	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:31s.  Time for last 1,000,000:   16s.  Last read position: chr6:77,974,185
INFO	2017-10-04 17:36:32	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:36:51	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:04:49s.  Time for last 1,000,000:   18s.  Last read position: chr6:137,404,269
INFO	2017-10-04 17:36:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:37:14	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:05:12s.  Time for last 1,000,000:   22s.  Last read position: chr7:21,245,520
INFO	2017-10-04 17:37:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:37:31	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:05:30s.  Time for last 1,000,000:   17s.  Last read position: chr7:85,857,653
INFO	2017-10-04 17:37:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:37:47	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:05:46s.  Time for last 1,000,000:   15s.  Last read position: chr7:144,001,736
INFO	2017-10-04 17:37:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:38:09	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:06:07s.  Time for last 1,000,000:   21s.  Last read position: chr8:41,203,963
INFO	2017-10-04 17:38:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:38:29	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:06:28s.  Time for last 1,000,000:   20s.  Last read position: chr8:102,061,393
INFO	2017-10-04 17:38:29	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:38:45	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:06:44s.  Time for last 1,000,000:   15s.  Last read position: chr9:10,990,618
INFO	2017-10-04 17:38:45	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:39:04	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:07:02s.  Time for last 1,000,000:   18s.  Last read position: chr9:97,983,066
INFO	2017-10-04 17:39:04	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 17:39:26	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:07:24s.  Time for last 1,000,000:   22s.  Last read position: chr10:12,834,065
INFO	2017-10-04 17:39:26	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:39:42	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:07:41s.  Time for last 1,000,000:   16s.  Last read position: chr10:75,472,436
INFO	2017-10-04 17:39:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:40:00	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:07:58s.  Time for last 1,000,000:   17s.  Last read position: chr10:129,426,500
INFO	2017-10-04 17:40:00	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:40:18	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:08:16s.  Time for last 1,000,000:   17s.  Last read position: chr11:54,692,866
INFO	2017-10-04 17:40:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:40:36	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:08:35s.  Time for last 1,000,000:   18s.  Last read position: chr11:112,089,025
INFO	2017-10-04 17:40:36	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:40:53	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:08:51s.  Time for last 1,000,000:   16s.  Last read position: chr12:30,580,815
INFO	2017-10-04 17:40:53	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:41:11	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:09:09s.  Time for last 1,000,000:   17s.  Last read position: chr12:93,605,120
INFO	2017-10-04 17:41:11	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:41:32	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:09:30s.  Time for last 1,000,000:   21s.  Last read position: chr13:32,875,800
INFO	2017-10-04 17:41:32	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 17:41:50	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:09:48s.  Time for last 1,000,000:   18s.  Last read position: chr13:95,992,720
INFO	2017-10-04 17:41:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:42:07	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:10:06s.  Time for last 1,000,000:   17s.  Last read position: chr14:61,124,313
INFO	2017-10-04 17:42:07	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:42:25	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:10:24s.  Time for last 1,000,000:   18s.  Last read position: chr15:32,649,380
INFO	2017-10-04 17:42:25	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:42:43	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:10:41s.  Time for last 1,000,000:   17s.  Last read position: chr15:92,375,551
INFO	2017-10-04 17:42:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:43:02	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:11:01s.  Time for last 1,000,000:   19s.  Last read position: chr16:60,752,919
INFO	2017-10-04 17:43:02	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:43:20	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:11:18s.  Time for last 1,000,000:   17s.  Last read position: chr17:30,340,400
INFO	2017-10-04 17:43:20	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 17:43:44	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:11:42s.  Time for last 1,000,000:   23s.  Last read position: chr18:3,911,617
INFO	2017-10-04 17:43:44	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:44:01	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:11:59s.  Time for last 1,000,000:   17s.  Last read position: chr18:67,006,484
INFO	2017-10-04 17:44:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:44:21	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:12:19s.  Time for last 1,000,000:   20s.  Last read position: chr19:45,654,458
INFO	2017-10-04 17:44:21	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:44:41	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:12:39s.  Time for last 1,000,000:   19s.  Last read position: chr20:47,388,238
INFO	2017-10-04 17:44:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:44:52	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:12:51s.  Time for last 1,000,000:   11s.  Last read position: chr22:23,159,658
INFO	2017-10-04 17:44:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:45:07	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:13:05s.  Time for last 1,000,000:   14s.  Last read position: chrX:28,590,090
INFO	2017-10-04 17:45:07	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 17:45:16	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:13:14s.  Time for last 1,000,000:    8s.  Last read position: chrX:103,400,149
INFO	2017-10-04 17:45:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 17:45:28	MarkDuplicates	Read 48915818 records. 0 pairs never matched.
INFO	2017-10-04 17:45:29	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1034465864; totalMemory: 1044381696; maxMemory: 1044381696
INFO	2017-10-04 17:45:29	MarkDuplicates	Will retain up to 32636928 duplicate indices before spilling to disk.
INFO	2017-10-04 17:45:29	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 17:45:40	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 17:45:57	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 17:45:58	MarkDuplicates	After generateDuplicateIndexes freeMemory: 793445040; totalMemory: 1064304640; maxMemory: 1064304640
INFO	2017-10-04 17:45:58	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 17:45:58	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 17:45:58	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 17:48:08	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:10s.  Time for last 10,000,000:  130s.  Last read position: chr3:111,869,440
INFO	2017-10-04 17:50:26	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:28s.  Time for last 10,000,000:  137s.  Last read position: chr6:137,404,269
INFO	2017-10-04 17:52:34	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:36s.  Time for last 10,000,000:  127s.  Last read position: chr10:129,426,500
INFO	2017-10-04 17:54:41	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:43s.  Time for last 10,000,000:  127s.  Last read position: chr16:60,752,919
INFO	2017-10-04 17:56:35	MarkDuplicates	Before output close freeMemory: 1062714168; totalMemory: 1073217536; maxMemory: 1073217536
INFO	2017-10-04 17:56:35	MarkDuplicates	After output close freeMemory: 1062702824; totalMemory: 1073217536; maxMemory: 1073217536
[Wed Oct 04 17:56:35 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 24.57 minutes.
Runtime.totalMemory()=1073217536
</pre>
Process 36143 returned: (0). Elapsed: 0:25:35.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`

<pre>
</pre>
Process 37417 returned: (0). Elapsed: 0:02:22. Peak memory: (Process: 0.018GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 37475 returned: (0). Elapsed: 0:07:33. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n esophagus_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 18:07:30: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n esophagus_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = esophagus_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 18:07:30: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 18:07:30: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 18:07:33:  1000000 
INFO  @ Wed, 04 Oct 2017 18:07:35:  2000000 
INFO  @ Wed, 04 Oct 2017 18:07:37:  3000000 
INFO  @ Wed, 04 Oct 2017 18:07:39:  4000000 
INFO  @ Wed, 04 Oct 2017 18:07:41:  5000000 
INFO  @ Wed, 04 Oct 2017 18:07:43:  6000000 
INFO  @ Wed, 04 Oct 2017 18:07:46:  7000000 
INFO  @ Wed, 04 Oct 2017 18:07:48:  8000000 
INFO  @ Wed, 04 Oct 2017 18:07:50:  9000000 
INFO  @ Wed, 04 Oct 2017 18:07:53:  10000000 
INFO  @ Wed, 04 Oct 2017 18:07:55:  11000000 
INFO  @ Wed, 04 Oct 2017 18:07:57:  12000000 
INFO  @ Wed, 04 Oct 2017 18:07:59:  13000000 
INFO  @ Wed, 04 Oct 2017 18:08:02:  14000000 
INFO  @ Wed, 04 Oct 2017 18:08:04:  15000000 
INFO  @ Wed, 04 Oct 2017 18:08:07:  16000000 
INFO  @ Wed, 04 Oct 2017 18:08:09:  17000000 
INFO  @ Wed, 04 Oct 2017 18:08:11:  18000000 
INFO  @ Wed, 04 Oct 2017 18:08:14:  19000000 
INFO  @ Wed, 04 Oct 2017 18:08:16:  20000000 
INFO  @ Wed, 04 Oct 2017 18:08:18:  21000000 
INFO  @ Wed, 04 Oct 2017 18:08:21:  22000000 
INFO  @ Wed, 04 Oct 2017 18:08:23:  23000000 
INFO  @ Wed, 04 Oct 2017 18:08:25:  24000000 
INFO  @ Wed, 04 Oct 2017 18:08:27:  25000000 
INFO  @ Wed, 04 Oct 2017 18:08:30:  26000000 
INFO  @ Wed, 04 Oct 2017 18:08:32:  27000000 
INFO  @ Wed, 04 Oct 2017 18:08:34:  28000000 
INFO  @ Wed, 04 Oct 2017 18:08:36:  29000000 
INFO  @ Wed, 04 Oct 2017 18:08:39:  30000000 
INFO  @ Wed, 04 Oct 2017 18:08:41:  31000000 
INFO  @ Wed, 04 Oct 2017 18:08:43:  32000000 
INFO  @ Wed, 04 Oct 2017 18:08:46:  33000000 
INFO  @ Wed, 04 Oct 2017 18:08:48:  34000000 
INFO  @ Wed, 04 Oct 2017 18:08:50:  35000000 
INFO  @ Wed, 04 Oct 2017 18:08:52:  36000000 
INFO  @ Wed, 04 Oct 2017 18:08:55:  37000000 
INFO  @ Wed, 04 Oct 2017 18:08:57:  38000000 
INFO  @ Wed, 04 Oct 2017 18:08:59:  39000000 
INFO  @ Wed, 04 Oct 2017 18:09:01:  40000000 
INFO  @ Wed, 04 Oct 2017 18:09:04:  41000000 
INFO  @ Wed, 04 Oct 2017 18:09:06:  42000000 
INFO  @ Wed, 04 Oct 2017 18:09:08:  43000000 
INFO  @ Wed, 04 Oct 2017 18:09:11:  44000000 
INFO  @ Wed, 04 Oct 2017 18:09:13:  45000000 
INFO  @ Wed, 04 Oct 2017 18:09:16:  46000000 
INFO  @ Wed, 04 Oct 2017 18:09:18:  47000000 
INFO  @ Wed, 04 Oct 2017 18:09:20:  48000000 
INFO  @ Wed, 04 Oct 2017 18:09:24: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 18:09:24: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 18:09:24: #1  total tags in treatment: 48915818 
INFO  @ Wed, 04 Oct 2017 18:09:24: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 18:09:24: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 18:09:25: #1  tags after filtering in treatment: 47230484 
INFO  @ Wed, 04 Oct 2017 18:09:25: #1  Redundant rate of treatment: 0.03 
INFO  @ Wed, 04 Oct 2017 18:09:25: #1 finished! 
INFO  @ Wed, 04 Oct 2017 18:09:25: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 18:09:25: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 18:09:25: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 18:09:25: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 18:09:25: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 18:11:55: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 18:13:18: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 18:13:18: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 18:13:18: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 18:13:19: Done! 
</pre>
Process 38262 returned: (0). Elapsed: 0:06:33. Peak memory: (Process: 0.616GB; Pipeline: 1.421GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 18:14:04 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 18:14:04 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 18:14:05	MarkDuplicates	Start of doWork freeMemory: 503974648; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 18:14:05	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 18:14:05	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 18:14:13	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:08s.  Time for last 1,000,000:    8s.  Last read position: chr1:25,747,768
INFO	2017-10-04 18:14:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:14:22	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:16s.  Time for last 1,000,000:    8s.  Last read position: chr1:55,018,333
INFO	2017-10-04 18:14:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:14:31	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:26s.  Time for last 1,000,000:    9s.  Last read position: chr1:96,619,060
INFO	2017-10-04 18:14:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:14:42	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:37s.  Time for last 1,000,000:   10s.  Last read position: chr1:160,457,338
INFO	2017-10-04 18:14:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:14:52	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:47s.  Time for last 1,000,000:   10s.  Last read position: chr1:200,862,389
INFO	2017-10-04 18:14:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:15:00	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:00:55s.  Time for last 1,000,000:    8s.  Last read position: chr1:232,432,462
INFO	2017-10-04 18:15:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:15:16	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:11s.  Time for last 1,000,000:   15s.  Last read position: chr2:17,562,004
INFO	2017-10-04 18:15:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:15:23	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:18s.  Time for last 1,000,000:    7s.  Last read position: chr2:52,691,715
INFO	2017-10-04 18:15:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:15:31	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:26s.  Time for last 1,000,000:    8s.  Last read position: chr2:96,660,272
INFO	2017-10-04 18:15:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:15:39	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:34s.  Time for last 1,000,000:    7s.  Last read position: chr2:134,120,355
INFO	2017-10-04 18:15:39	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 18:15:59	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:54s.  Time for last 1,000,000:   19s.  Last read position: chr2:176,262,690
INFO	2017-10-04 18:15:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:16:18	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:13s.  Time for last 1,000,000:   19s.  Last read position: chr2:217,877,332
INFO	2017-10-04 18:16:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:16:34	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:29s.  Time for last 1,000,000:   15s.  Last read position: chr3:6,830,766
INFO	2017-10-04 18:16:34	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:16:56	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:51s.  Time for last 1,000,000:   22s.  Last read position: chr3:42,541,090
INFO	2017-10-04 18:16:56	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:17:14	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:03:09s.  Time for last 1,000,000:   17s.  Last read position: chr3:76,132,952
INFO	2017-10-04 18:17:14	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:17:30	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:03:25s.  Time for last 1,000,000:   16s.  Last read position: chr3:123,867,597
INFO	2017-10-04 18:17:30	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:17:48	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:43s.  Time for last 1,000,000:   18s.  Last read position: chr3:160,281,422
INFO	2017-10-04 18:17:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:18:07	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:04:02s.  Time for last 1,000,000:   18s.  Last read position: chr4:1,216,850
INFO	2017-10-04 18:18:07	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 18:18:24	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:19s.  Time for last 1,000,000:   17s.  Last read position: chr4:37,683,145
INFO	2017-10-04 18:18:24	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 18:18:43	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:04:38s.  Time for last 1,000,000:   18s.  Last read position: chr4:83,484,914
INFO	2017-10-04 18:18:43	MarkDuplicates	Tracking 30 as yet unmatched pairs. 30 records in RAM.
INFO	2017-10-04 18:19:05	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:05:00s.  Time for last 1,000,000:   22s.  Last read position: chr4:128,638,682
INFO	2017-10-04 18:19:05	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:19:21	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:05:16s.  Time for last 1,000,000:   15s.  Last read position: chr4:172,857,235
INFO	2017-10-04 18:19:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:19:38	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:05:33s.  Time for last 1,000,000:   17s.  Last read position: chr5:20,045,176
INFO	2017-10-04 18:19:38	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:19:55	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:05:50s.  Time for last 1,000,000:   16s.  Last read position: chr5:68,935,336
INFO	2017-10-04 18:19:55	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:20:13	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:06:08s.  Time for last 1,000,000:   17s.  Last read position: chr5:114,039,997
INFO	2017-10-04 18:20:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:20:29	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:06:24s.  Time for last 1,000,000:   16s.  Last read position: chr5:150,057,607
INFO	2017-10-04 18:20:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:20:48	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:06:43s.  Time for last 1,000,000:   18s.  Last read position: chr6:1,610,889
INFO	2017-10-04 18:20:48	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 18:21:08	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:07:03s.  Time for last 1,000,000:   20s.  Last read position: chr6:36,120,146
INFO	2017-10-04 18:21:08	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:21:25	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:07:20s.  Time for last 1,000,000:   17s.  Last read position: chr6:78,797,192
INFO	2017-10-04 18:21:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:21:43	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:07:38s.  Time for last 1,000,000:   18s.  Last read position: chr6:121,931,678
INFO	2017-10-04 18:21:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:22:00	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:07:55s.  Time for last 1,000,000:   16s.  Last read position: chr6:160,349,285
INFO	2017-10-04 18:22:00	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:22:20	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:08:15s.  Time for last 1,000,000:   20s.  Last read position: chr7:23,443,939
INFO	2017-10-04 18:22:20	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:22:38	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:08:33s.  Time for last 1,000,000:   18s.  Last read position: chr7:64,908,653
INFO	2017-10-04 18:22:38	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:22:55	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:08:49s.  Time for last 1,000,000:   16s.  Last read position: chr7:103,158,263
INFO	2017-10-04 18:22:55	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:23:16	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:09:11s.  Time for last 1,000,000:   21s.  Last read position: chr7:141,929,929
INFO	2017-10-04 18:23:16	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:23:33	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:09:28s.  Time for last 1,000,000:   16s.  Last read position: chr8:18,966,886
INFO	2017-10-04 18:23:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:23:50	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:09:45s.  Time for last 1,000,000:   16s.  Last read position: chr8:57,070,306
INFO	2017-10-04 18:23:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:24:08	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:10:03s.  Time for last 1,000,000:   17s.  Last read position: chr8:99,918,276
INFO	2017-10-04 18:24:08	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:24:28	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:10:23s.  Time for last 1,000,000:   20s.  Last read position: chr8:138,787,097
INFO	2017-10-04 18:24:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:24:45	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:10:40s.  Time for last 1,000,000:   17s.  Last read position: chr9:30,055,959
INFO	2017-10-04 18:24:45	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:25:03	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:10:58s.  Time for last 1,000,000:   18s.  Last read position: chr9:94,373,968
INFO	2017-10-04 18:25:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:25:28	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:11:23s.  Time for last 1,000,000:   24s.  Last read position: chr9:127,956,611
INFO	2017-10-04 18:25:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:25:45	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:11:40s.  Time for last 1,000,000:   16s.  Last read position: chr10:16,384,469
INFO	2017-10-04 18:25:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:26:03	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:11:58s.  Time for last 1,000,000:   18s.  Last read position: chr10:60,628,053
INFO	2017-10-04 18:26:03	MarkDuplicates	Tracking 12 as yet unmatched pairs. 12 records in RAM.
INFO	2017-10-04 18:26:24	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:12:19s.  Time for last 1,000,000:   20s.  Last read position: chr10:96,032,364
INFO	2017-10-04 18:26:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:26:41	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:12:35s.  Time for last 1,000,000:   16s.  Last read position: chr10:128,271,057
INFO	2017-10-04 18:26:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:26:59	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:12:54s.  Time for last 1,000,000:   18s.  Last read position: chr11:24,123,210
INFO	2017-10-04 18:26:59	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:27:17	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:13:12s.  Time for last 1,000,000:   17s.  Last read position: chr11:65,212,718
INFO	2017-10-04 18:27:17	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:27:39	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:13:33s.  Time for last 1,000,000:   21s.  Last read position: chr11:99,990,175
INFO	2017-10-04 18:27:39	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:27:56	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:13:51s.  Time for last 1,000,000:   17s.  Last read position: chr11:133,934,347
INFO	2017-10-04 18:27:56	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:28:14	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:14:09s.  Time for last 1,000,000:   17s.  Last read position: chr12:40,992,128
INFO	2017-10-04 18:28:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:28:32	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:14:27s.  Time for last 1,000,000:   18s.  Last read position: chr12:78,527,245
INFO	2017-10-04 18:28:32	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:28:49	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:14:44s.  Time for last 1,000,000:   17s.  Last read position: chr12:115,943,638
INFO	2017-10-04 18:28:49	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:29:06	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:15:00s.  Time for last 1,000,000:   16s.  Last read position: chr13:32,747,322
INFO	2017-10-04 18:29:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:29:22	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:15:17s.  Time for last 1,000,000:   16s.  Last read position: chr13:77,055,649
INFO	2017-10-04 18:29:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:29:43	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:15:37s.  Time for last 1,000,000:   20s.  Last read position: chr14:22,223,572
INFO	2017-10-04 18:29:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:30:00	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:15:55s.  Time for last 1,000,000:   17s.  Last read position: chr14:64,676,707
INFO	2017-10-04 18:30:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:30:17	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:16:12s.  Time for last 1,000,000:   17s.  Last read position: chr14:98,549,226
INFO	2017-10-04 18:30:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:30:36	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:16:31s.  Time for last 1,000,000:   18s.  Last read position: chr15:48,828,229
INFO	2017-10-04 18:30:36	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:30:53	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:16:48s.  Time for last 1,000,000:   17s.  Last read position: chr15:83,512,786
INFO	2017-10-04 18:30:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:31:10	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:17:05s.  Time for last 1,000,000:   16s.  Last read position: chr16:11,907,907
INFO	2017-10-04 18:31:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:31:33	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:17:28s.  Time for last 1,000,000:   22s.  Last read position: chr16:59,265,176
INFO	2017-10-04 18:31:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:31:54	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:17:49s.  Time for last 1,000,000:   21s.  Last read position: chr16:90,040,882
INFO	2017-10-04 18:31:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:32:12	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:18:07s.  Time for last 1,000,000:   17s.  Last read position: chr17:34,525,884
INFO	2017-10-04 18:32:12	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:32:28	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:18:23s.  Time for last 1,000,000:   16s.  Last read position: chr17:66,966,389
INFO	2017-10-04 18:32:28	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:32:46	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:18:41s.  Time for last 1,000,000:   17s.  Last read position: chr18:13,419,099
INFO	2017-10-04 18:32:46	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 18:33:03	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:18:58s.  Time for last 1,000,000:   17s.  Last read position: chr18:58,446,268
INFO	2017-10-04 18:33:03	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 18:33:20	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:19:15s.  Time for last 1,000,000:   16s.  Last read position: chr19:8,212,000
INFO	2017-10-04 18:33:20	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:33:37	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:19:32s.  Time for last 1,000,000:   17s.  Last read position: chr19:40,425,044
INFO	2017-10-04 18:33:37	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:33:58	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:19:52s.  Time for last 1,000,000:   20s.  Last read position: chr20:11,988,927
INFO	2017-10-04 18:33:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:34:15	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:20:10s.  Time for last 1,000,000:   17s.  Last read position: chr20:48,491,798
INFO	2017-10-04 18:34:15	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 18:34:32	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:20:26s.  Time for last 1,000,000:   16s.  Last read position: chr21:32,180,076
INFO	2017-10-04 18:34:32	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:34:51	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:20:46s.  Time for last 1,000,000:   19s.  Last read position: chr22:31,177,032
INFO	2017-10-04 18:34:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:35:09	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:21:03s.  Time for last 1,000,000:   17s.  Last read position: chrX:8,903,933
INFO	2017-10-04 18:35:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:35:24	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:21:19s.  Time for last 1,000,000:   15s.  Last read position: chrX:49,650,896
INFO	2017-10-04 18:35:24	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:35:41	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:21:36s.  Time for last 1,000,000:   16s.  Last read position: chrX:103,859,735
INFO	2017-10-04 18:35:41	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 18:36:01	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:21:56s.  Time for last 1,000,000:   19s.  Last read position: chrX:147,941,413
INFO	2017-10-04 18:36:01	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 18:36:07	MarkDuplicates	Read 77332512 records. 0 pairs never matched.
INFO	2017-10-04 18:36:08	MarkDuplicates	After buildSortedReadEndLists freeMemory: 687466368; totalMemory: 697303040; maxMemory: 954728448
INFO	2017-10-04 18:36:08	MarkDuplicates	Will retain up to 29835264 duplicate indices before spilling to disk.
INFO	2017-10-04 18:36:08	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 18:36:25	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 18:36:51	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 18:36:51	MarkDuplicates	After generateDuplicateIndexes freeMemory: 460373240; totalMemory: 708837376; maxMemory: 954728448
INFO	2017-10-04 18:36:51	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 18:36:51	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 18:36:51	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 18:39:00	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:08s.  Time for last 10,000,000:  128s.  Last read position: chr2:134,120,355
INFO	2017-10-04 18:41:05	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:13s.  Time for last 10,000,000:  124s.  Last read position: chr4:83,484,914
INFO	2017-10-04 18:43:08	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:16s.  Time for last 10,000,000:  123s.  Last read position: chr6:121,931,678
INFO	2017-10-04 18:45:11	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:19s.  Time for last 10,000,000:  122s.  Last read position: chr9:30,055,959
INFO	2017-10-04 18:47:13	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:10:21s.  Time for last 10,000,000:  122s.  Last read position: chr11:133,934,347
INFO	2017-10-04 18:49:16	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:12:24s.  Time for last 10,000,000:  123s.  Last read position: chr15:83,512,786
INFO	2017-10-04 18:51:18	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:14:26s.  Time for last 10,000,000:  121s.  Last read position: chr20:11,988,927
INFO	2017-10-04 18:52:46	MarkDuplicates	Before output close freeMemory: 704680104; totalMemory: 715128832; maxMemory: 954728448
INFO	2017-10-04 18:52:46	MarkDuplicates	After output close freeMemory: 704666560; totalMemory: 715128832; maxMemory: 954728448
[Wed Oct 04 18:52:46 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 38.70 minutes.
Runtime.totalMemory()=715128832
</pre>
Process 39236 returned: (0). Elapsed: 0:39:35.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`

<pre>
</pre>
Process 21512 returned: (0). Elapsed: 0:03:48. Peak memory: (Process: 0.02GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 21611 returned: (0). Elapsed: 0:11:34. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n liver_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 19:09:00: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n liver_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = liver_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 19:09:00: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 19:09:00: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 19:09:03:  1000000 
INFO  @ Wed, 04 Oct 2017 19:09:05:  2000000 
INFO  @ Wed, 04 Oct 2017 19:09:07:  3000000 
INFO  @ Wed, 04 Oct 2017 19:09:10:  4000000 
INFO  @ Wed, 04 Oct 2017 19:09:12:  5000000 
INFO  @ Wed, 04 Oct 2017 19:09:15:  6000000 
INFO  @ Wed, 04 Oct 2017 19:09:17:  7000000 
INFO  @ Wed, 04 Oct 2017 19:09:19:  8000000 
INFO  @ Wed, 04 Oct 2017 19:09:22:  9000000 
INFO  @ Wed, 04 Oct 2017 19:09:24:  10000000 
INFO  @ Wed, 04 Oct 2017 19:09:26:  11000000 
INFO  @ Wed, 04 Oct 2017 19:09:29:  12000000 
INFO  @ Wed, 04 Oct 2017 19:09:31:  13000000 
INFO  @ Wed, 04 Oct 2017 19:09:34:  14000000 
INFO  @ Wed, 04 Oct 2017 19:09:37:  15000000 
INFO  @ Wed, 04 Oct 2017 19:09:40:  16000000 
INFO  @ Wed, 04 Oct 2017 19:09:43:  17000000 
INFO  @ Wed, 04 Oct 2017 19:09:46:  18000000 
INFO  @ Wed, 04 Oct 2017 19:09:49:  19000000 
INFO  @ Wed, 04 Oct 2017 19:09:51:  20000000 
INFO  @ Wed, 04 Oct 2017 19:09:53:  21000000 
INFO  @ Wed, 04 Oct 2017 19:09:56:  22000000 
INFO  @ Wed, 04 Oct 2017 19:09:58:  23000000 
INFO  @ Wed, 04 Oct 2017 19:10:00:  24000000 
INFO  @ Wed, 04 Oct 2017 19:10:03:  25000000 
INFO  @ Wed, 04 Oct 2017 19:10:05:  26000000 
INFO  @ Wed, 04 Oct 2017 19:10:08:  27000000 
INFO  @ Wed, 04 Oct 2017 19:10:10:  28000000 
INFO  @ Wed, 04 Oct 2017 19:10:12:  29000000 
INFO  @ Wed, 04 Oct 2017 19:10:14:  30000000 
INFO  @ Wed, 04 Oct 2017 19:10:16:  31000000 
INFO  @ Wed, 04 Oct 2017 19:10:18:  32000000 
INFO  @ Wed, 04 Oct 2017 19:10:21:  33000000 
INFO  @ Wed, 04 Oct 2017 19:10:23:  34000000 
INFO  @ Wed, 04 Oct 2017 19:10:26:  35000000 
INFO  @ Wed, 04 Oct 2017 19:10:28:  36000000 
INFO  @ Wed, 04 Oct 2017 19:10:31:  37000000 
INFO  @ Wed, 04 Oct 2017 19:10:33:  38000000 
INFO  @ Wed, 04 Oct 2017 19:10:36:  39000000 
INFO  @ Wed, 04 Oct 2017 19:10:38:  40000000 
INFO  @ Wed, 04 Oct 2017 19:10:41:  41000000 
INFO  @ Wed, 04 Oct 2017 19:10:43:  42000000 
INFO  @ Wed, 04 Oct 2017 19:10:45:  43000000 
INFO  @ Wed, 04 Oct 2017 19:10:48:  44000000 
INFO  @ Wed, 04 Oct 2017 19:10:51:  45000000 
INFO  @ Wed, 04 Oct 2017 19:10:53:  46000000 
INFO  @ Wed, 04 Oct 2017 19:10:56:  47000000 
INFO  @ Wed, 04 Oct 2017 19:10:58:  48000000 
INFO  @ Wed, 04 Oct 2017 19:11:01:  49000000 
INFO  @ Wed, 04 Oct 2017 19:11:03:  50000000 
INFO  @ Wed, 04 Oct 2017 19:11:06:  51000000 
INFO  @ Wed, 04 Oct 2017 19:11:08:  52000000 
INFO  @ Wed, 04 Oct 2017 19:11:10:  53000000 
INFO  @ Wed, 04 Oct 2017 19:11:13:  54000000 
INFO  @ Wed, 04 Oct 2017 19:11:15:  55000000 
INFO  @ Wed, 04 Oct 2017 19:11:18:  56000000 
INFO  @ Wed, 04 Oct 2017 19:11:20:  57000000 
INFO  @ Wed, 04 Oct 2017 19:11:23:  58000000 
INFO  @ Wed, 04 Oct 2017 19:11:25:  59000000 
INFO  @ Wed, 04 Oct 2017 19:11:28:  60000000 
INFO  @ Wed, 04 Oct 2017 19:11:30:  61000000 
INFO  @ Wed, 04 Oct 2017 19:11:33:  62000000 
INFO  @ Wed, 04 Oct 2017 19:11:35:  63000000 
INFO  @ Wed, 04 Oct 2017 19:11:37:  64000000 
INFO  @ Wed, 04 Oct 2017 19:11:40:  65000000 
INFO  @ Wed, 04 Oct 2017 19:11:42:  66000000 
INFO  @ Wed, 04 Oct 2017 19:11:45:  67000000 
INFO  @ Wed, 04 Oct 2017 19:11:47:  68000000 
INFO  @ Wed, 04 Oct 2017 19:11:50:  69000000 
INFO  @ Wed, 04 Oct 2017 19:11:52:  70000000 
INFO  @ Wed, 04 Oct 2017 19:11:55:  71000000 
INFO  @ Wed, 04 Oct 2017 19:11:57:  72000000 
INFO  @ Wed, 04 Oct 2017 19:11:59:  73000000 
INFO  @ Wed, 04 Oct 2017 19:12:02:  74000000 
INFO  @ Wed, 04 Oct 2017 19:12:04:  75000000 
INFO  @ Wed, 04 Oct 2017 19:12:07:  76000000 
INFO  @ Wed, 04 Oct 2017 19:12:09:  77000000 
INFO  @ Wed, 04 Oct 2017 19:12:13: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 19:12:13: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 19:12:13: #1  total tags in treatment: 77332512 
INFO  @ Wed, 04 Oct 2017 19:12:13: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 19:12:13: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 19:12:15: #1  tags after filtering in treatment: 73147785 
INFO  @ Wed, 04 Oct 2017 19:12:15: #1  Redundant rate of treatment: 0.05 
INFO  @ Wed, 04 Oct 2017 19:12:15: #1 finished! 
INFO  @ Wed, 04 Oct 2017 19:12:15: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 19:12:15: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 19:12:15: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 19:12:15: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 19:12:15: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 19:16:45: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 19:19:55: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 19:19:56: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 19:19:56: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 19:19:56: Done! 
</pre>
Process 22076 returned: (0). Elapsed: 0:11:34. Peak memory: (Process: 0.858GB; Pipeline: 1.421GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 19:20:36 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 19:20:36 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 19:20:36	MarkDuplicates	Start of doWork freeMemory: 503974536; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 19:20:36	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 19:20:36	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 19:20:49	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:12s.  Time for last 1,000,000:   12s.  Last read position: chr1:39,592,529
INFO	2017-10-04 19:20:49	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:20:57	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:20s.  Time for last 1,000,000:    7s.  Last read position: chr1:87,825,126
INFO	2017-10-04 19:20:57	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:21:07	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:30s.  Time for last 1,000,000:    9s.  Last read position: chr1:163,879,818
INFO	2017-10-04 19:21:07	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:21:17	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:40s.  Time for last 1,000,000:   10s.  Last read position: chr1:212,558,733
INFO	2017-10-04 19:21:17	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 19:21:27	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:50s.  Time for last 1,000,000:    9s.  Last read position: chr2:9,306,173
INFO	2017-10-04 19:21:27	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:21:35	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:00:58s.  Time for last 1,000,000:    8s.  Last read position: chr2:53,324,081
INFO	2017-10-04 19:21:35	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 19:21:52	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:15s.  Time for last 1,000,000:   17s.  Last read position: chr2:106,856,104
INFO	2017-10-04 19:21:52	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:22:04	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:27s.  Time for last 1,000,000:   11s.  Last read position: chr2:156,012,988
INFO	2017-10-04 19:22:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:22:19	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:42s.  Time for last 1,000,000:   15s.  Last read position: chr2:207,035,103
INFO	2017-10-04 19:22:19	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:22:36	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:59s.  Time for last 1,000,000:   16s.  Last read position: chr3:7,639,274
INFO	2017-10-04 19:22:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:22:57	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:02:20s.  Time for last 1,000,000:   20s.  Last read position: chr3:51,506,669
INFO	2017-10-04 19:22:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:23:15	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:38s.  Time for last 1,000,000:   18s.  Last read position: chr3:104,988,673
INFO	2017-10-04 19:23:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:23:31	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:54s.  Time for last 1,000,000:   15s.  Last read position: chr3:151,197,060
INFO	2017-10-04 19:23:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:23:54	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:03:17s.  Time for last 1,000,000:   22s.  Last read position: chr4:1,974,641
INFO	2017-10-04 19:23:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:24:10	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:03:33s.  Time for last 1,000,000:   16s.  Last read position: chr4:47,905,992
INFO	2017-10-04 19:24:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:24:27	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:03:50s.  Time for last 1,000,000:   16s.  Last read position: chr4:103,764,757
INFO	2017-10-04 19:24:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:24:45	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:04:08s.  Time for last 1,000,000:   17s.  Last read position: chr4:155,734,215
INFO	2017-10-04 19:24:45	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:24:56	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:04:19s.  Time for last 1,000,000:   11s.  Last read position: chr5:11,647,947
INFO	2017-10-04 19:24:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:25:06	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:29s.  Time for last 1,000,000:    9s.  Last read position: chr5:67,826,125
INFO	2017-10-04 19:25:06	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:25:14	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:04:37s.  Time for last 1,000,000:    8s.  Last read position: chr5:121,914,144
INFO	2017-10-04 19:25:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:25:29	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:04:52s.  Time for last 1,000,000:   14s.  Last read position: chr5:168,041,431
INFO	2017-10-04 19:25:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:25:37	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:05:00s.  Time for last 1,000,000:    7s.  Last read position: chr6:31,940,604
INFO	2017-10-04 19:25:37	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:25:45	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:05:08s.  Time for last 1,000,000:    8s.  Last read position: chr6:83,984,302
INFO	2017-10-04 19:25:45	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:25:57	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:05:20s.  Time for last 1,000,000:   11s.  Last read position: chr6:135,031,594
INFO	2017-10-04 19:25:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:26:10	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:05:33s.  Time for last 1,000,000:   13s.  Last read position: chr7:9,362,870
INFO	2017-10-04 19:26:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:26:22	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:05:45s.  Time for last 1,000,000:   12s.  Last read position: chr7:63,004,561
INFO	2017-10-04 19:26:22	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:26:30	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:05:53s.  Time for last 1,000,000:    8s.  Last read position: chr7:117,835,064
INFO	2017-10-04 19:26:30	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:26:44	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:06:07s.  Time for last 1,000,000:   13s.  Last read position: chr8:5,320,552
INFO	2017-10-04 19:26:44	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:26:52	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:06:15s.  Time for last 1,000,000:    8s.  Last read position: chr8:55,187,979
INFO	2017-10-04 19:26:52	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:27:01	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:06:24s.  Time for last 1,000,000:    9s.  Last read position: chr8:104,682,296
INFO	2017-10-04 19:27:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:27:11	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:06:34s.  Time for last 1,000,000:    9s.  Last read position: chr9:1,786,934
INFO	2017-10-04 19:27:11	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 19:27:26	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:06:49s.  Time for last 1,000,000:   15s.  Last read position: chr9:79,813,398
INFO	2017-10-04 19:27:26	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:27:37	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:07:00s.  Time for last 1,000,000:   10s.  Last read position: chr9:126,910,014
INFO	2017-10-04 19:27:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:27:45	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:07:08s.  Time for last 1,000,000:    7s.  Last read position: chr10:30,208,199
INFO	2017-10-04 19:27:45	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:27:58	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:07:21s.  Time for last 1,000,000:   13s.  Last read position: chr10:83,590,885
INFO	2017-10-04 19:27:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:28:08	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:07:31s.  Time for last 1,000,000:    9s.  Last read position: chr10:127,738,712
INFO	2017-10-04 19:28:08	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:28:15	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:07:38s.  Time for last 1,000,000:    7s.  Last read position: chr11:36,016,060
INFO	2017-10-04 19:28:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:28:25	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:07:48s.  Time for last 1,000,000:   10s.  Last read position: chr11:84,611,091
INFO	2017-10-04 19:28:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:28:38	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:08:01s.  Time for last 1,000,000:   12s.  Last read position: chr11:131,495,512
INFO	2017-10-04 19:28:38	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 19:28:48	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:08:11s.  Time for last 1,000,000:    9s.  Last read position: chr12:48,818,992
INFO	2017-10-04 19:28:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:28:57	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:08:20s.  Time for last 1,000,000:    9s.  Last read position: chr12:98,110,119
INFO	2017-10-04 19:28:57	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:29:11	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:08:34s.  Time for last 1,000,000:   13s.  Last read position: chr13:28,480,906
INFO	2017-10-04 19:29:11	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:29:20	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:08:43s.  Time for last 1,000,000:    9s.  Last read position: chr13:79,754,068
INFO	2017-10-04 19:29:20	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 19:29:30	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:08:53s.  Time for last 1,000,000:    9s.  Last read position: chr14:33,436,299
INFO	2017-10-04 19:29:30	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:29:40	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:09:03s.  Time for last 1,000,000:   10s.  Last read position: chr14:84,373,418
INFO	2017-10-04 19:29:40	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:29:48	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:09:11s.  Time for last 1,000,000:    8s.  Last read position: chr15:46,186,613
INFO	2017-10-04 19:29:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:29:57	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:09:20s.  Time for last 1,000,000:    8s.  Last read position: chr15:94,587,095
INFO	2017-10-04 19:29:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:30:08	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:09:31s.  Time for last 1,000,000:   11s.  Last read position: chr16:53,584,340
INFO	2017-10-04 19:30:08	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 19:30:21	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:09:44s.  Time for last 1,000,000:   13s.  Last read position: chr17:7,191,639
INFO	2017-10-04 19:30:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:30:32	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:09:55s.  Time for last 1,000,000:   10s.  Last read position: chr17:59,964,754
INFO	2017-10-04 19:30:32	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 19:30:42	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:10:05s.  Time for last 1,000,000:   10s.  Last read position: chr18:27,045,885
INFO	2017-10-04 19:30:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:30:54	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:10:17s.  Time for last 1,000,000:   11s.  Last read position: chr18:72,612,437
INFO	2017-10-04 19:30:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:31:03	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:10:26s.  Time for last 1,000,000:    8s.  Last read position: chr19:39,435,911
INFO	2017-10-04 19:31:03	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 19:31:11	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:10:34s.  Time for last 1,000,000:    8s.  Last read position: chr20:31,822,490
INFO	2017-10-04 19:31:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:31:19	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:10:42s.  Time for last 1,000,000:    8s.  Last read position: chr21:24,884,721
INFO	2017-10-04 19:31:19	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:31:34	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:10:57s.  Time for last 1,000,000:   14s.  Last read position: chr22:39,292,033
INFO	2017-10-04 19:31:34	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 19:31:43	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:11:06s.  Time for last 1,000,000:    8s.  Last read position: chrX:36,569,899
INFO	2017-10-04 19:31:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:31:50	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:11:13s.  Time for last 1,000,000:    7s.  Last read position: chrX:108,304,012
INFO	2017-10-04 19:31:50	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 19:32:03	MarkDuplicates	Read 58879664 records. 0 pairs never matched.
INFO	2017-10-04 19:32:05	MarkDuplicates	After buildSortedReadEndLists freeMemory: 957380840; totalMemory: 967311360; maxMemory: 967311360
INFO	2017-10-04 19:32:05	MarkDuplicates	Will retain up to 30228480 duplicate indices before spilling to disk.
INFO	2017-10-04 19:32:05	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 19:32:19	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 19:32:40	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 19:32:40	MarkDuplicates	After generateDuplicateIndexes freeMemory: 737254216; totalMemory: 988807168; maxMemory: 988807168
INFO	2017-10-04 19:32:40	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 19:32:40	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 19:32:40	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 19:34:40	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:00s.  Time for last 10,000,000:  119s.  Last read position: chr3:7,639,274
INFO	2017-10-04 19:36:46	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:05s.  Time for last 10,000,000:  125s.  Last read position: chr5:121,914,144
INFO	2017-10-04 19:38:50	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:09s.  Time for last 10,000,000:  124s.  Last read position: chr8:104,682,296
INFO	2017-10-04 19:40:55	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:14s.  Time for last 10,000,000:  124s.  Last read position: chr12:48,818,992
INFO	2017-10-04 19:43:00	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:10:20s.  Time for last 10,000,000:  125s.  Last read position: chr17:59,964,754
INFO	2017-10-04 19:44:51	MarkDuplicates	Before output close freeMemory: 985648744; totalMemory: 996147200; maxMemory: 996147200
INFO	2017-10-04 19:44:52	MarkDuplicates	After output close freeMemory: 985637408; totalMemory: 996147200; maxMemory: 996147200
[Wed Oct 04 19:44:52 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 24.28 minutes.
Runtime.totalMemory()=996147200
</pre>
Process 22385 returned: (0). Elapsed: 0:24:34.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`

<pre>
</pre>
Process 58356 returned: (0). Elapsed: 0:03:02. Peak memory: (Process: 0.02GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 9687 returned: (0). Elapsed: 0:08:34. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n nerve_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 19:56:44: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n nerve_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = nerve_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 19:56:44: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 19:56:44: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 19:56:47:  1000000 
INFO  @ Wed, 04 Oct 2017 19:56:49:  2000000 
INFO  @ Wed, 04 Oct 2017 19:56:52:  3000000 
INFO  @ Wed, 04 Oct 2017 19:56:54:  4000000 
INFO  @ Wed, 04 Oct 2017 19:56:57:  5000000 
INFO  @ Wed, 04 Oct 2017 19:57:00:  6000000 
INFO  @ Wed, 04 Oct 2017 19:57:02:  7000000 
INFO  @ Wed, 04 Oct 2017 19:57:04:  8000000 
INFO  @ Wed, 04 Oct 2017 19:57:07:  9000000 
INFO  @ Wed, 04 Oct 2017 19:57:09:  10000000 
INFO  @ Wed, 04 Oct 2017 19:57:12:  11000000 
INFO  @ Wed, 04 Oct 2017 19:57:14:  12000000 
INFO  @ Wed, 04 Oct 2017 19:57:16:  13000000 
INFO  @ Wed, 04 Oct 2017 19:57:19:  14000000 
INFO  @ Wed, 04 Oct 2017 19:57:21:  15000000 
INFO  @ Wed, 04 Oct 2017 19:57:24:  16000000 
INFO  @ Wed, 04 Oct 2017 19:57:26:  17000000 
INFO  @ Wed, 04 Oct 2017 19:57:28:  18000000 
INFO  @ Wed, 04 Oct 2017 19:57:31:  19000000 
INFO  @ Wed, 04 Oct 2017 19:57:33:  20000000 
INFO  @ Wed, 04 Oct 2017 19:57:35:  21000000 
INFO  @ Wed, 04 Oct 2017 19:57:38:  22000000 
INFO  @ Wed, 04 Oct 2017 19:57:40:  23000000 
INFO  @ Wed, 04 Oct 2017 19:57:43:  24000000 
INFO  @ Wed, 04 Oct 2017 19:57:45:  25000000 
INFO  @ Wed, 04 Oct 2017 19:57:47:  26000000 
INFO  @ Wed, 04 Oct 2017 19:57:50:  27000000 
INFO  @ Wed, 04 Oct 2017 19:57:52:  28000000 
INFO  @ Wed, 04 Oct 2017 19:57:55:  29000000 
INFO  @ Wed, 04 Oct 2017 19:57:57:  30000000 
INFO  @ Wed, 04 Oct 2017 19:58:00:  31000000 
INFO  @ Wed, 04 Oct 2017 19:58:02:  32000000 
INFO  @ Wed, 04 Oct 2017 19:58:04:  33000000 
INFO  @ Wed, 04 Oct 2017 19:58:07:  34000000 
INFO  @ Wed, 04 Oct 2017 19:58:09:  35000000 
INFO  @ Wed, 04 Oct 2017 19:58:12:  36000000 
INFO  @ Wed, 04 Oct 2017 19:58:15:  37000000 
INFO  @ Wed, 04 Oct 2017 19:58:17:  38000000 
INFO  @ Wed, 04 Oct 2017 19:58:19:  39000000 
INFO  @ Wed, 04 Oct 2017 19:58:22:  40000000 
INFO  @ Wed, 04 Oct 2017 19:58:24:  41000000 
INFO  @ Wed, 04 Oct 2017 19:58:27:  42000000 
INFO  @ Wed, 04 Oct 2017 19:58:29:  43000000 
INFO  @ Wed, 04 Oct 2017 19:58:31:  44000000 
INFO  @ Wed, 04 Oct 2017 19:58:34:  45000000 
INFO  @ Wed, 04 Oct 2017 19:58:36:  46000000 
INFO  @ Wed, 04 Oct 2017 19:58:39:  47000000 
INFO  @ Wed, 04 Oct 2017 19:58:41:  48000000 
INFO  @ Wed, 04 Oct 2017 19:58:43:  49000000 
INFO  @ Wed, 04 Oct 2017 19:58:46:  50000000 
INFO  @ Wed, 04 Oct 2017 19:58:48:  51000000 
INFO  @ Wed, 04 Oct 2017 19:58:51:  52000000 
INFO  @ Wed, 04 Oct 2017 19:58:53:  53000000 
INFO  @ Wed, 04 Oct 2017 19:58:55:  54000000 
INFO  @ Wed, 04 Oct 2017 19:58:58:  55000000 
INFO  @ Wed, 04 Oct 2017 19:59:00:  56000000 
INFO  @ Wed, 04 Oct 2017 19:59:03:  57000000 
INFO  @ Wed, 04 Oct 2017 19:59:05:  58000000 
INFO  @ Wed, 04 Oct 2017 19:59:09: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 19:59:09: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 19:59:09: #1  total tags in treatment: 58879664 
INFO  @ Wed, 04 Oct 2017 19:59:09: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 19:59:09: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 19:59:11: #1  tags after filtering in treatment: 56074450 
INFO  @ Wed, 04 Oct 2017 19:59:11: #1  Redundant rate of treatment: 0.05 
INFO  @ Wed, 04 Oct 2017 19:59:11: #1 finished! 
INFO  @ Wed, 04 Oct 2017 19:59:11: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 19:59:11: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 19:59:11: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 19:59:11: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 19:59:11: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 20:02:14: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 20:04:10: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 20:04:10: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 20:04:11: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 20:04:11: Done! 
</pre>
Process 7184 returned: (0). Elapsed: 0:07:33. Peak memory: (Process: 0.814GB; Pipeline: 1.421GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 20:04:18 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 20:04:18 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 20:04:20	MarkDuplicates	Start of doWork freeMemory: 503974648; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 20:04:20	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 20:04:20	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 20:04:45	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:25s.  Time for last 1,000,000:   25s.  Last read position: chr1:26,176,389
INFO	2017-10-04 20:04:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:05:01	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:41s.  Time for last 1,000,000:   15s.  Last read position: chr1:54,965,456
INFO	2017-10-04 20:05:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:05:11	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:50s.  Time for last 1,000,000:    9s.  Last read position: chr1:88,922,437
INFO	2017-10-04 20:05:11	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:05:20	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:01:00s.  Time for last 1,000,000:    9s.  Last read position: chr1:147,622,846
INFO	2017-10-04 20:05:20	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:05:29	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:01:08s.  Time for last 1,000,000:    8s.  Last read position: chr1:180,243,618
INFO	2017-10-04 20:05:29	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:05:37	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:16s.  Time for last 1,000,000:    7s.  Last read position: chr1:211,711,317
INFO	2017-10-04 20:05:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:05:51	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:31s.  Time for last 1,000,000:   14s.  Last read position: chr1:241,820,675
INFO	2017-10-04 20:05:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:05:58	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:38s.  Time for last 1,000,000:    7s.  Last read position: chr2:21,957,177
INFO	2017-10-04 20:05:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:06:06	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:46s.  Time for last 1,000,000:    7s.  Last read position: chr2:53,326,746
INFO	2017-10-04 20:06:06	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:06:15	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:55s.  Time for last 1,000,000:    9s.  Last read position: chr2:85,247,305
INFO	2017-10-04 20:06:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:06:25	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:02:04s.  Time for last 1,000,000:    9s.  Last read position: chr2:121,143,383
INFO	2017-10-04 20:06:25	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:06:33	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:13s.  Time for last 1,000,000:    8s.  Last read position: chr2:153,134,780
INFO	2017-10-04 20:06:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:06:42	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:22s.  Time for last 1,000,000:    9s.  Last read position: chr2:186,169,310
INFO	2017-10-04 20:06:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:06:56	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:36s.  Time for last 1,000,000:   13s.  Last read position: chr2:218,633,404
INFO	2017-10-04 20:06:56	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:07:03	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:02:43s.  Time for last 1,000,000:    7s.  Last read position: chr3:4,420,451
INFO	2017-10-04 20:07:03	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:07:11	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:02:51s.  Time for last 1,000,000:    8s.  Last read position: chr3:34,996,605
INFO	2017-10-04 20:07:11	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:07:20	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:00s.  Time for last 1,000,000:    8s.  Last read position: chr3:62,904,921
INFO	2017-10-04 20:07:20	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:07:29	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:03:09s.  Time for last 1,000,000:    8s.  Last read position: chr3:99,132,440
INFO	2017-10-04 20:07:29	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:07:37	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:03:17s.  Time for last 1,000,000:    7s.  Last read position: chr3:129,563,020
INFO	2017-10-04 20:07:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:07:46	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:03:26s.  Time for last 1,000,000:    9s.  Last read position: chr3:161,583,195
INFO	2017-10-04 20:07:46	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:07:59	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:03:39s.  Time for last 1,000,000:   12s.  Last read position: chr3:194,283,938
INFO	2017-10-04 20:07:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:08:08	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:03:47s.  Time for last 1,000,000:    8s.  Last read position: chr4:22,586,610
INFO	2017-10-04 20:08:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:08:15	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:03:55s.  Time for last 1,000,000:    7s.  Last read position: chr4:55,896,094
INFO	2017-10-04 20:08:15	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:08:25	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:04:04s.  Time for last 1,000,000:    9s.  Last read position: chr4:88,722,220
INFO	2017-10-04 20:08:25	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:08:34	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:04:14s.  Time for last 1,000,000:    9s.  Last read position: chr4:121,801,312
INFO	2017-10-04 20:08:34	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 20:08:44	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:04:24s.  Time for last 1,000,000:    9s.  Last read position: chr4:154,141,070
INFO	2017-10-04 20:08:44	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 20:08:52	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:04:32s.  Time for last 1,000,000:    8s.  Last read position: chr4:185,070,030
INFO	2017-10-04 20:08:52	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:09:05	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:04:44s.  Time for last 1,000,000:   12s.  Last read position: chr5:23,203,589
INFO	2017-10-04 20:09:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:09:13	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:04:53s.  Time for last 1,000,000:    8s.  Last read position: chr5:59,361,429
INFO	2017-10-04 20:09:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:09:21	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:05:00s.  Time for last 1,000,000:    7s.  Last read position: chr5:93,578,672
INFO	2017-10-04 20:09:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:09:31	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:05:10s.  Time for last 1,000,000:    9s.  Last read position: chr5:126,722,342
INFO	2017-10-04 20:09:31	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:09:41	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:05:20s.  Time for last 1,000,000:    9s.  Last read position: chr5:155,282,253
INFO	2017-10-04 20:09:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:09:47	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:05:27s.  Time for last 1,000,000:    6s.  Last read position: chr6:2,636,078
INFO	2017-10-04 20:09:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:09:56	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:05:36s.  Time for last 1,000,000:    8s.  Last read position: chr6:33,194,905
INFO	2017-10-04 20:09:56	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:10:10	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:05:49s.  Time for last 1,000,000:   13s.  Last read position: chr6:65,178,156
INFO	2017-10-04 20:10:10	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:10:16	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:05:56s.  Time for last 1,000,000:    6s.  Last read position: chr6:97,813,003
INFO	2017-10-04 20:10:16	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:10:26	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:06:05s.  Time for last 1,000,000:    9s.  Last read position: chr6:130,430,314
INFO	2017-10-04 20:10:26	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:10:34	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:06:14s.  Time for last 1,000,000:    8s.  Last read position: chr6:162,111,504
INFO	2017-10-04 20:10:34	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:10:44	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:06:24s.  Time for last 1,000,000:   10s.  Last read position: chr7:20,014,884
INFO	2017-10-04 20:10:44	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:10:52	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:06:32s.  Time for last 1,000,000:    7s.  Last read position: chr7:49,452,697
INFO	2017-10-04 20:10:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:11:02	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:06:42s.  Time for last 1,000,000:   10s.  Last read position: chr7:88,141,268
INFO	2017-10-04 20:11:02	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:11:15	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:06:55s.  Time for last 1,000,000:   12s.  Last read position: chr7:121,098,469
INFO	2017-10-04 20:11:15	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:11:24	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:07:03s.  Time for last 1,000,000:    8s.  Last read position: chr7:152,023,333
INFO	2017-10-04 20:11:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:11:31	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:07:11s.  Time for last 1,000,000:    7s.  Last read position: chr8:23,207,144
INFO	2017-10-04 20:11:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:11:43	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:07:22s.  Time for last 1,000,000:   11s.  Last read position: chr8:56,833,739
INFO	2017-10-04 20:11:43	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:11:51	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:07:30s.  Time for last 1,000,000:    7s.  Last read position: chr8:88,799,289
INFO	2017-10-04 20:11:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:11:59	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:07:38s.  Time for last 1,000,000:    8s.  Last read position: chr8:121,713,242
INFO	2017-10-04 20:11:59	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 20:12:06	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:07:46s.  Time for last 1,000,000:    7s.  Last read position: chr9:2,144,904
INFO	2017-10-04 20:12:06	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:12:20	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:07:59s.  Time for last 1,000,000:   13s.  Last read position: chr9:35,319,997
INFO	2017-10-04 20:12:20	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:12:28	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:08:07s.  Time for last 1,000,000:    7s.  Last read position: chr9:94,867,655
INFO	2017-10-04 20:12:28	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:12:36	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:08:16s.  Time for last 1,000,000:    8s.  Last read position: chr9:124,820,620
INFO	2017-10-04 20:12:36	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:12:47	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:08:27s.  Time for last 1,000,000:   10s.  Last read position: chr10:11,508,714
INFO	2017-10-04 20:12:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:12:54	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:08:34s.  Time for last 1,000,000:    7s.  Last read position: chr10:47,337,609
INFO	2017-10-04 20:12:54	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:13:01	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:08:41s.  Time for last 1,000,000:    7s.  Last read position: chr10:79,295,527
INFO	2017-10-04 20:13:01	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 20:13:10	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:08:50s.  Time for last 1,000,000:    8s.  Last read position: chr10:110,545,730
INFO	2017-10-04 20:13:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:13:23	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:09:03s.  Time for last 1,000,000:   12s.  Last read position: chr11:2,342,258
INFO	2017-10-04 20:13:23	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:13:32	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:09:12s.  Time for last 1,000,000:    9s.  Last read position: chr11:32,094,025
INFO	2017-10-04 20:13:32	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:13:40	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:09:20s.  Time for last 1,000,000:    7s.  Last read position: chr11:66,009,014
INFO	2017-10-04 20:13:40	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:13:51	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:09:30s.  Time for last 1,000,000:   10s.  Last read position: chr11:96,502,692
INFO	2017-10-04 20:13:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:13:58	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:09:37s.  Time for last 1,000,000:    7s.  Last read position: chr11:126,402,402
INFO	2017-10-04 20:13:58	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:14:06	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:09:46s.  Time for last 1,000,000:    8s.  Last read position: chr12:21,140,520
INFO	2017-10-04 20:14:06	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 20:14:14	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:09:54s.  Time for last 1,000,000:    8s.  Last read position: chr12:56,315,825
INFO	2017-10-04 20:14:14	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 20:14:27	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:10:06s.  Time for last 1,000,000:   12s.  Last read position: chr12:90,536,019
INFO	2017-10-04 20:14:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:14:36	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:10:16s.  Time for last 1,000,000:    9s.  Last read position: chr12:121,018,373
INFO	2017-10-04 20:14:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:14:45	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:10:24s.  Time for last 1,000,000:    8s.  Last read position: chr13:34,439,760
INFO	2017-10-04 20:14:45	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:14:54	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:10:34s.  Time for last 1,000,000:    9s.  Last read position: chr13:66,766,274
INFO	2017-10-04 20:14:54	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:15:02	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:10:42s.  Time for last 1,000,000:    7s.  Last read position: chr13:99,273,235
INFO	2017-10-04 20:15:02	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:15:10	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:10:50s.  Time for last 1,000,000:    8s.  Last read position: chr14:35,310,867
INFO	2017-10-04 20:15:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:15:21	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:11:00s.  Time for last 1,000,000:   10s.  Last read position: chr14:68,909,223
INFO	2017-10-04 20:15:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:15:33	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:11:13s.  Time for last 1,000,000:   12s.  Last read position: chr14:98,592,896
INFO	2017-10-04 20:15:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:15:47	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:11:26s.  Time for last 1,000,000:   13s.  Last read position: chr15:44,073,037
INFO	2017-10-04 20:15:47	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:15:55	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:11:35s.  Time for last 1,000,000:    8s.  Last read position: chr15:76,340,204
INFO	2017-10-04 20:15:55	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:16:06	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:11:46s.  Time for last 1,000,000:   11s.  Last read position: chr16:3,966,055
INFO	2017-10-04 20:16:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:16:14	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:11:54s.  Time for last 1,000,000:    8s.  Last read position: chr16:49,797,687
INFO	2017-10-04 20:16:14	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:16:23	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:12:03s.  Time for last 1,000,000:    9s.  Last read position: chr16:80,295,756
INFO	2017-10-04 20:16:23	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:16:31	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:12:11s.  Time for last 1,000,000:    8s.  Last read position: chr17:16,403,867
INFO	2017-10-04 20:16:31	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 20:16:48	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:12:28s.  Time for last 1,000,000:   16s.  Last read position: chr17:51,081,250
INFO	2017-10-04 20:16:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:16:56	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:12:36s.  Time for last 1,000,000:    7s.  Last read position: chr17:80,527,010
INFO	2017-10-04 20:16:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:17:04	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:12:44s.  Time for last 1,000,000:    8s.  Last read position: chr18:32,181,711
INFO	2017-10-04 20:17:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:17:14	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:12:53s.  Time for last 1,000,000:    9s.  Last read position: chr18:61,367,365
INFO	2017-10-04 20:17:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:17:23	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:13:03s.  Time for last 1,000,000:    9s.  Last read position: chr19:7,488,957
INFO	2017-10-04 20:17:23	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 20:17:32	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:13:11s.  Time for last 1,000,000:    8s.  Last read position: chr19:40,111,157
INFO	2017-10-04 20:17:32	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:17:40	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:13:19s.  Time for last 1,000,000:    8s.  Last read position: chr20:10,316,310
INFO	2017-10-04 20:17:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:17:53	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:13:33s.  Time for last 1,000,000:   13s.  Last read position: chr20:44,075,771
INFO	2017-10-04 20:17:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:18:01	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:13:40s.  Time for last 1,000,000:    7s.  Last read position: chr21:21,045,139
INFO	2017-10-04 20:18:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:18:10	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:13:49s.  Time for last 1,000,000:    9s.  Last read position: chr22:20,563,560
INFO	2017-10-04 20:18:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:18:20	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:14:00s.  Time for last 1,000,000:   10s.  Last read position: chr22:48,169,190
INFO	2017-10-04 20:18:20	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 20:18:30	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:14:10s.  Time for last 1,000,000:    9s.  Last read position: chrX:28,068,081
INFO	2017-10-04 20:18:30	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:18:39	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:14:19s.  Time for last 1,000,000:    9s.  Last read position: chrX:68,938,649
INFO	2017-10-04 20:18:39	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:18:55	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:14:35s.  Time for last 1,000,000:   16s.  Last read position: chrX:109,479,923
INFO	2017-10-04 20:18:55	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 20:19:04	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:14:44s.  Time for last 1,000,000:    8s.  Last read position: chrX:144,678,762
INFO	2017-10-04 20:19:04	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 20:19:09	MarkDuplicates	Read 91528496 records. 0 pairs never matched.
INFO	2017-10-04 20:19:11	MarkDuplicates	After buildSortedReadEndLists freeMemory: 766064952; totalMemory: 775946240; maxMemory: 954728448
INFO	2017-10-04 20:19:11	MarkDuplicates	Will retain up to 29835264 duplicate indices before spilling to disk.
INFO	2017-10-04 20:19:11	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 20:19:30	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 20:20:01	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 20:20:02	MarkDuplicates	After generateDuplicateIndexes freeMemory: 538965688; totalMemory: 787480576; maxMemory: 954728448
INFO	2017-10-04 20:20:02	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 20:20:02	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 20:20:02	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 20:21:59	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:01:57s.  Time for last 10,000,000:  117s.  Last read position: chr2:85,247,305
INFO	2017-10-04 20:24:01	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:03:58s.  Time for last 10,000,000:  121s.  Last read position: chr3:161,583,195
INFO	2017-10-04 20:26:02	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:00s.  Time for last 10,000,000:  121s.  Last read position: chr5:93,578,672
INFO	2017-10-04 20:28:04	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:02s.  Time for last 10,000,000:  121s.  Last read position: chr7:49,452,697
INFO	2017-10-04 20:30:06	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:10:04s.  Time for last 10,000,000:  122s.  Last read position: chr9:94,867,655
INFO	2017-10-04 20:32:08	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:12:06s.  Time for last 10,000,000:  121s.  Last read position: chr11:126,402,402
INFO	2017-10-04 20:34:10	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:14:08s.  Time for last 10,000,000:  121s.  Last read position: chr14:98,592,896
INFO	2017-10-04 20:36:12	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:16:09s.  Time for last 10,000,000:  121s.  Last read position: chr18:61,367,365
INFO	2017-10-04 20:38:13	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:18:11s.  Time for last 10,000,000:  121s.  Last read position: chrX:109,479,923
INFO	2017-10-04 20:38:32	MarkDuplicates	Before output close freeMemory: 717070976; totalMemory: 726138880; maxMemory: 954728448
INFO	2017-10-04 20:38:32	MarkDuplicates	After output close freeMemory: 717057432; totalMemory: 726138880; maxMemory: 954728448
[Wed Oct 04 20:38:32 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 34.24 minutes.
Runtime.totalMemory()=726138880
</pre>
Process 30632 returned: (0). Elapsed: 0:34:35.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`

<pre>
</pre>
Process 35162 returned: (0). Elapsed: 0:03:48. Peak memory: (Process: 0.018GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 35291 returned: (0). Elapsed: 0:13:34. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n ovary_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 20:56:14: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n ovary_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = ovary_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 20:56:14: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 20:56:14: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 20:56:16:  1000000 
INFO  @ Wed, 04 Oct 2017 20:56:19:  2000000 
INFO  @ Wed, 04 Oct 2017 20:56:21:  3000000 
INFO  @ Wed, 04 Oct 2017 20:56:23:  4000000 
INFO  @ Wed, 04 Oct 2017 20:56:25:  5000000 
INFO  @ Wed, 04 Oct 2017 20:56:27:  6000000 
INFO  @ Wed, 04 Oct 2017 20:56:30:  7000000 
INFO  @ Wed, 04 Oct 2017 20:56:32:  8000000 
INFO  @ Wed, 04 Oct 2017 20:56:34:  9000000 
INFO  @ Wed, 04 Oct 2017 20:56:36:  10000000 
INFO  @ Wed, 04 Oct 2017 20:56:38:  11000000 
INFO  @ Wed, 04 Oct 2017 20:56:40:  12000000 
INFO  @ Wed, 04 Oct 2017 20:56:43:  13000000 
INFO  @ Wed, 04 Oct 2017 20:56:45:  14000000 
INFO  @ Wed, 04 Oct 2017 20:56:47:  15000000 
INFO  @ Wed, 04 Oct 2017 20:56:49:  16000000 
INFO  @ Wed, 04 Oct 2017 20:56:51:  17000000 
INFO  @ Wed, 04 Oct 2017 20:56:53:  18000000 
INFO  @ Wed, 04 Oct 2017 20:56:56:  19000000 
INFO  @ Wed, 04 Oct 2017 20:56:58:  20000000 
INFO  @ Wed, 04 Oct 2017 20:57:00:  21000000 
INFO  @ Wed, 04 Oct 2017 20:57:02:  22000000 
INFO  @ Wed, 04 Oct 2017 20:57:04:  23000000 
INFO  @ Wed, 04 Oct 2017 20:57:06:  24000000 
INFO  @ Wed, 04 Oct 2017 20:57:09:  25000000 
INFO  @ Wed, 04 Oct 2017 20:57:11:  26000000 
INFO  @ Wed, 04 Oct 2017 20:57:13:  27000000 
INFO  @ Wed, 04 Oct 2017 20:57:15:  28000000 
INFO  @ Wed, 04 Oct 2017 20:57:17:  29000000 
INFO  @ Wed, 04 Oct 2017 20:57:19:  30000000 
INFO  @ Wed, 04 Oct 2017 20:57:22:  31000000 
INFO  @ Wed, 04 Oct 2017 20:57:24:  32000000 
INFO  @ Wed, 04 Oct 2017 20:57:26:  33000000 
INFO  @ Wed, 04 Oct 2017 20:57:28:  34000000 
INFO  @ Wed, 04 Oct 2017 20:57:31:  35000000 
INFO  @ Wed, 04 Oct 2017 20:57:33:  36000000 
INFO  @ Wed, 04 Oct 2017 20:57:35:  37000000 
INFO  @ Wed, 04 Oct 2017 20:57:37:  38000000 
INFO  @ Wed, 04 Oct 2017 20:57:39:  39000000 
INFO  @ Wed, 04 Oct 2017 20:57:41:  40000000 
INFO  @ Wed, 04 Oct 2017 20:57:44:  41000000 
INFO  @ Wed, 04 Oct 2017 20:57:46:  42000000 
INFO  @ Wed, 04 Oct 2017 20:57:48:  43000000 
INFO  @ Wed, 04 Oct 2017 20:57:50:  44000000 
INFO  @ Wed, 04 Oct 2017 20:57:52:  45000000 
INFO  @ Wed, 04 Oct 2017 20:57:54:  46000000 
INFO  @ Wed, 04 Oct 2017 20:57:57:  47000000 
INFO  @ Wed, 04 Oct 2017 20:57:59:  48000000 
INFO  @ Wed, 04 Oct 2017 20:58:01:  49000000 
INFO  @ Wed, 04 Oct 2017 20:58:03:  50000000 
INFO  @ Wed, 04 Oct 2017 20:58:05:  51000000 
INFO  @ Wed, 04 Oct 2017 20:58:08:  52000000 
INFO  @ Wed, 04 Oct 2017 20:58:10:  53000000 
INFO  @ Wed, 04 Oct 2017 20:58:12:  54000000 
INFO  @ Wed, 04 Oct 2017 20:58:14:  55000000 
INFO  @ Wed, 04 Oct 2017 20:58:16:  56000000 
INFO  @ Wed, 04 Oct 2017 20:58:18:  57000000 
INFO  @ Wed, 04 Oct 2017 20:58:21:  58000000 
INFO  @ Wed, 04 Oct 2017 20:58:23:  59000000 
INFO  @ Wed, 04 Oct 2017 20:58:25:  60000000 
INFO  @ Wed, 04 Oct 2017 20:58:27:  61000000 
INFO  @ Wed, 04 Oct 2017 20:58:29:  62000000 
INFO  @ Wed, 04 Oct 2017 20:58:32:  63000000 
INFO  @ Wed, 04 Oct 2017 20:58:34:  64000000 
INFO  @ Wed, 04 Oct 2017 20:58:36:  65000000 
INFO  @ Wed, 04 Oct 2017 20:58:38:  66000000 
INFO  @ Wed, 04 Oct 2017 20:58:40:  67000000 
INFO  @ Wed, 04 Oct 2017 20:58:43:  68000000 
INFO  @ Wed, 04 Oct 2017 20:58:45:  69000000 
INFO  @ Wed, 04 Oct 2017 20:58:47:  70000000 
INFO  @ Wed, 04 Oct 2017 20:58:49:  71000000 
INFO  @ Wed, 04 Oct 2017 20:58:51:  72000000 
INFO  @ Wed, 04 Oct 2017 20:58:53:  73000000 
INFO  @ Wed, 04 Oct 2017 20:58:56:  74000000 
INFO  @ Wed, 04 Oct 2017 20:58:58:  75000000 
INFO  @ Wed, 04 Oct 2017 20:59:00:  76000000 
INFO  @ Wed, 04 Oct 2017 20:59:02:  77000000 
INFO  @ Wed, 04 Oct 2017 20:59:04:  78000000 
INFO  @ Wed, 04 Oct 2017 20:59:07:  79000000 
INFO  @ Wed, 04 Oct 2017 20:59:09:  80000000 
INFO  @ Wed, 04 Oct 2017 20:59:11:  81000000 
INFO  @ Wed, 04 Oct 2017 20:59:13:  82000000 
INFO  @ Wed, 04 Oct 2017 20:59:16:  83000000 
INFO  @ Wed, 04 Oct 2017 20:59:18:  84000000 
INFO  @ Wed, 04 Oct 2017 20:59:20:  85000000 
INFO  @ Wed, 04 Oct 2017 20:59:22:  86000000 
INFO  @ Wed, 04 Oct 2017 20:59:25:  87000000 
INFO  @ Wed, 04 Oct 2017 20:59:27:  88000000 
INFO  @ Wed, 04 Oct 2017 20:59:29:  89000000 
INFO  @ Wed, 04 Oct 2017 20:59:31:  90000000 
INFO  @ Wed, 04 Oct 2017 20:59:33:  91000000 
INFO  @ Wed, 04 Oct 2017 20:59:38: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 20:59:38: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 20:59:38: #1  total tags in treatment: 91528496 
INFO  @ Wed, 04 Oct 2017 20:59:38: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 20:59:38: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 20:59:40: #1  tags after filtering in treatment: 86865119 
INFO  @ Wed, 04 Oct 2017 20:59:40: #1  Redundant rate of treatment: 0.05 
INFO  @ Wed, 04 Oct 2017 20:59:40: #1 finished! 
INFO  @ Wed, 04 Oct 2017 20:59:40: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 20:59:40: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 20:59:40: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 20:59:40: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 20:59:40: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 21:04:33: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 21:07:31: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 21:07:31: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 21:07:32: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 21:07:32: Done! 
</pre>
Process 35712 returned: (0). Elapsed: 0:11:34. Peak memory: (Process: 1.088GB; Pipeline: 1.421GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 21:07:49 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 21:07:49 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 21:07:49	MarkDuplicates	Start of doWork freeMemory: 503974472; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 21:07:49	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 21:07:49	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 21:07:57	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:07s.  Time for last 1,000,000:    7s.  Last read position: chr1:71,207,424
INFO	2017-10-04 21:07:57	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:08:04	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:15s.  Time for last 1,000,000:    7s.  Last read position: chr1:179,624,045
INFO	2017-10-04 21:08:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:08:18	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:29s.  Time for last 1,000,000:   14s.  Last read position: chr2:8,470,509
INFO	2017-10-04 21:08:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:08:29	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:40s.  Time for last 1,000,000:   10s.  Last read position: chr2:85,566,656
INFO	2017-10-04 21:08:29	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:08:37	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:48s.  Time for last 1,000,000:    8s.  Last read position: chr2:172,978,284
INFO	2017-10-04 21:08:37	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:08:47	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:00:57s.  Time for last 1,000,000:    9s.  Last read position: chr3:8,361,889
INFO	2017-10-04 21:08:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:09:00	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:11s.  Time for last 1,000,000:   13s.  Last read position: chr3:84,083,897
INFO	2017-10-04 21:09:00	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:09:07	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:18s.  Time for last 1,000,000:    7s.  Last read position: chr3:172,614,808
INFO	2017-10-04 21:09:07	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:09:16	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:27s.  Time for last 1,000,000:    8s.  Last read position: chr4:56,186,325
INFO	2017-10-04 21:09:16	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:09:26	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:37s.  Time for last 1,000,000:   10s.  Last read position: chr4:147,530,851
INFO	2017-10-04 21:09:26	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:09:45	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:55s.  Time for last 1,000,000:   18s.  Last read position: chr5:39,703,802
INFO	2017-10-04 21:09:45	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:10:02	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:13s.  Time for last 1,000,000:   17s.  Last read position: chr5:132,294,253
INFO	2017-10-04 21:10:02	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 21:10:19	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:30s.  Time for last 1,000,000:   17s.  Last read position: chr6:25,904,955
INFO	2017-10-04 21:10:19	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:10:40	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:51s.  Time for last 1,000,000:   20s.  Last read position: chr6:110,567,340
INFO	2017-10-04 21:10:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:10:58	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:03:08s.  Time for last 1,000,000:   17s.  Last read position: chr7:18,789,647
INFO	2017-10-04 21:10:58	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:11:16	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:03:26s.  Time for last 1,000,000:   17s.  Last read position: chr7:109,743,616
INFO	2017-10-04 21:11:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:11:33	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:44s.  Time for last 1,000,000:   17s.  Last read position: chr8:31,172,141
INFO	2017-10-04 21:11:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:11:49	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:04:00s.  Time for last 1,000,000:   16s.  Last read position: chr8:118,621,994
INFO	2017-10-04 21:11:49	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 21:12:07	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:18s.  Time for last 1,000,000:   17s.  Last read position: chr9:76,840,010
INFO	2017-10-04 21:12:07	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:12:24	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:04:35s.  Time for last 1,000,000:   17s.  Last read position: chr10:11,145,112
INFO	2017-10-04 21:12:24	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:12:44	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:04:55s.  Time for last 1,000,000:   19s.  Last read position: chr10:96,677,485
INFO	2017-10-04 21:12:44	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:13:01	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:05:12s.  Time for last 1,000,000:   16s.  Last read position: chr11:33,968,115
INFO	2017-10-04 21:13:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:13:18	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:05:29s.  Time for last 1,000,000:   17s.  Last read position: chr11:115,288,074
INFO	2017-10-04 21:13:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:13:36	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:05:47s.  Time for last 1,000,000:   17s.  Last read position: chr12:57,220,953
INFO	2017-10-04 21:13:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:13:55	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:06:06s.  Time for last 1,000,000:   19s.  Last read position: chr13:22,482,153
INFO	2017-10-04 21:13:55	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:14:13	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:06:24s.  Time for last 1,000,000:   18s.  Last read position: chr13:107,697,703
INFO	2017-10-04 21:14:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:14:29	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:06:40s.  Time for last 1,000,000:   16s.  Last read position: chr14:94,412,477
INFO	2017-10-04 21:14:29	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:14:51	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:07:01s.  Time for last 1,000,000:   21s.  Last read position: chr15:90,871,684
INFO	2017-10-04 21:14:51	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:15:08	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:07:18s.  Time for last 1,000,000:   16s.  Last read position: chr16:78,627,405
INFO	2017-10-04 21:15:08	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:15:25	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:07:36s.  Time for last 1,000,000:   17s.  Last read position: chr17:67,378,492
INFO	2017-10-04 21:15:25	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:15:40	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:07:51s.  Time for last 1,000,000:   15s.  Last read position: chr18:62,401,922
INFO	2017-10-04 21:15:40	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:15:59	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:08:10s.  Time for last 1,000,000:   18s.  Last read position: chr19:56,981,158
INFO	2017-10-04 21:15:59	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:16:17	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:08:28s.  Time for last 1,000,000:   18s.  Last read position: chr21:24,732,372
INFO	2017-10-04 21:16:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:16:33	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:08:43s.  Time for last 1,000,000:   15s.  Last read position: chrX:28,041,603
INFO	2017-10-04 21:16:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:16:49	MarkDuplicates	Read 34699378 records. 0 pairs never matched.
INFO	2017-10-04 21:16:49	MarkDuplicates	After buildSortedReadEndLists freeMemory: 948946960; totalMemory: 958922752; maxMemory: 958922752
INFO	2017-10-04 21:16:49	MarkDuplicates	Will retain up to 29966336 duplicate indices before spilling to disk.
INFO	2017-10-04 21:16:49	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 21:16:57	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 21:17:10	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 21:17:10	MarkDuplicates	After generateDuplicateIndexes freeMemory: 702180040; totalMemory: 951582720; maxMemory: 954728448
INFO	2017-10-04 21:17:10	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 21:17:10	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 21:17:10	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 21:19:26	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:02:16s.  Time for last 10,000,000:  136s.  Last read position: chr4:147,530,851
INFO	2017-10-04 21:21:48	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:37s.  Time for last 10,000,000:  141s.  Last read position: chr10:11,145,112
INFO	2017-10-04 21:24:10	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:59s.  Time for last 10,000,000:  142s.  Last read position: chr17:67,378,492
INFO	2017-10-04 21:25:16	MarkDuplicates	Before output close freeMemory: 966876848; totalMemory: 977272832; maxMemory: 977272832
INFO	2017-10-04 21:25:16	MarkDuplicates	After output close freeMemory: 966865520; totalMemory: 977272832; maxMemory: 977272832
[Wed Oct 04 21:25:16 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 17.46 minutes.
Runtime.totalMemory()=977272832
</pre>
Process 6408 returned: (0). Elapsed: 0:17:34.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`

<pre>
</pre>
Process 6969 returned: (0). Elapsed: 0:02:22. Peak memory: (Process: 0.019GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 6987 returned: (0). Elapsed: 0:05:33. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n prostate_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 21:33:17: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n prostate_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = prostate_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 21:33:17: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 21:33:18: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 21:33:20:  1000000 
INFO  @ Wed, 04 Oct 2017 21:33:22:  2000000 
INFO  @ Wed, 04 Oct 2017 21:33:24:  3000000 
INFO  @ Wed, 04 Oct 2017 21:33:26:  4000000 
INFO  @ Wed, 04 Oct 2017 21:33:28:  5000000 
INFO  @ Wed, 04 Oct 2017 21:33:31:  6000000 
INFO  @ Wed, 04 Oct 2017 21:33:33:  7000000 
INFO  @ Wed, 04 Oct 2017 21:33:35:  8000000 
INFO  @ Wed, 04 Oct 2017 21:33:37:  9000000 
INFO  @ Wed, 04 Oct 2017 21:33:39:  10000000 
INFO  @ Wed, 04 Oct 2017 21:33:42:  11000000 
INFO  @ Wed, 04 Oct 2017 21:33:44:  12000000 
INFO  @ Wed, 04 Oct 2017 21:33:46:  13000000 
INFO  @ Wed, 04 Oct 2017 21:33:48:  14000000 
INFO  @ Wed, 04 Oct 2017 21:33:51:  15000000 
INFO  @ Wed, 04 Oct 2017 21:33:53:  16000000 
INFO  @ Wed, 04 Oct 2017 21:33:55:  17000000 
INFO  @ Wed, 04 Oct 2017 21:33:57:  18000000 
INFO  @ Wed, 04 Oct 2017 21:33:59:  19000000 
INFO  @ Wed, 04 Oct 2017 21:34:02:  20000000 
INFO  @ Wed, 04 Oct 2017 21:34:04:  21000000 
INFO  @ Wed, 04 Oct 2017 21:34:06:  22000000 
INFO  @ Wed, 04 Oct 2017 21:34:08:  23000000 
INFO  @ Wed, 04 Oct 2017 21:34:10:  24000000 
INFO  @ Wed, 04 Oct 2017 21:34:13:  25000000 
INFO  @ Wed, 04 Oct 2017 21:34:15:  26000000 
INFO  @ Wed, 04 Oct 2017 21:34:17:  27000000 
INFO  @ Wed, 04 Oct 2017 21:34:19:  28000000 
INFO  @ Wed, 04 Oct 2017 21:34:21:  29000000 
INFO  @ Wed, 04 Oct 2017 21:34:24:  30000000 
INFO  @ Wed, 04 Oct 2017 21:34:26:  31000000 
INFO  @ Wed, 04 Oct 2017 21:34:28:  32000000 
INFO  @ Wed, 04 Oct 2017 21:34:30:  33000000 
INFO  @ Wed, 04 Oct 2017 21:34:33:  34000000 
INFO  @ Wed, 04 Oct 2017 21:34:35: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 21:34:35: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 21:34:35: #1  total tags in treatment: 34699378 
INFO  @ Wed, 04 Oct 2017 21:34:35: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 21:34:35: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 21:34:36: #1  tags after filtering in treatment: 33545175 
INFO  @ Wed, 04 Oct 2017 21:34:36: #1  Redundant rate of treatment: 0.03 
INFO  @ Wed, 04 Oct 2017 21:34:36: #1 finished! 
INFO  @ Wed, 04 Oct 2017 21:34:36: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 21:34:36: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 21:34:36: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 21:34:36: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 21:34:36: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 21:36:28: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 21:37:40: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 21:37:40: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 21:37:40: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 21:37:41: Done! 
</pre>
Process 7143 returned: (0). Elapsed: 0:04:38. Peak memory: (Process: 0.449GB; Pipeline: 1.421GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 21:37:56 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 21:37:56 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 21:37:56	MarkDuplicates	Start of doWork freeMemory: 503974512; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 21:37:56	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 21:37:56	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 21:38:08	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:11s.  Time for last 1,000,000:   11s.  Last read position: chr1:21,334,466
INFO	2017-10-04 21:38:08	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 21:38:18	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:22s.  Time for last 1,000,000:   10s.  Last read position: chr1:43,387,553
INFO	2017-10-04 21:38:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:38:28	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:31s.  Time for last 1,000,000:    9s.  Last read position: chr1:71,583,106
INFO	2017-10-04 21:38:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:38:39	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:43s.  Time for last 1,000,000:   11s.  Last read position: chr1:102,473,983
INFO	2017-10-04 21:38:39	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:38:49	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:52s.  Time for last 1,000,000:    9s.  Last read position: chr1:156,500,869
INFO	2017-10-04 21:38:49	MarkDuplicates	Tracking 52 as yet unmatched pairs. 52 records in RAM.
INFO	2017-10-04 21:38:57	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:01:00s.  Time for last 1,000,000:    7s.  Last read position: chr1:184,476,487
INFO	2017-10-04 21:38:57	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:39:12	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:15s.  Time for last 1,000,000:   15s.  Last read position: chr1:212,558,914
INFO	2017-10-04 21:39:12	MarkDuplicates	Tracking 34 as yet unmatched pairs. 34 records in RAM.
INFO	2017-10-04 21:39:20	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:24s.  Time for last 1,000,000:    8s.  Last read position: chr1:239,242,611
INFO	2017-10-04 21:39:20	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:39:31	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:34s.  Time for last 1,000,000:   10s.  Last read position: chr2:16,205,917
INFO	2017-10-04 21:39:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:39:39	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:42s.  Time for last 1,000,000:    7s.  Last read position: chr2:42,753,115
INFO	2017-10-04 21:39:39	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:39:57	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:02:00s.  Time for last 1,000,000:   18s.  Last read position: chr2:69,778,064
INFO	2017-10-04 21:39:57	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:40:16	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:19s.  Time for last 1,000,000:   18s.  Last read position: chr2:103,711,519
INFO	2017-10-04 21:40:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:40:35	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:38s.  Time for last 1,000,000:   18s.  Last read position: chr2:132,629,762
INFO	2017-10-04 21:40:35	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:40:57	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:03:01s.  Time for last 1,000,000:   22s.  Last read position: chr2:163,380,178
INFO	2017-10-04 21:40:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:41:15	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:03:18s.  Time for last 1,000,000:   17s.  Last read position: chr2:193,815,642
INFO	2017-10-04 21:41:15	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:41:30	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:03:34s.  Time for last 1,000,000:   15s.  Last read position: chr2:221,089,094
INFO	2017-10-04 21:41:30	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:41:49	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:03:52s.  Time for last 1,000,000:   18s.  Last read position: chr3:3,179,853
INFO	2017-10-04 21:41:49	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-04 21:42:08	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:04:11s.  Time for last 1,000,000:   18s.  Last read position: chr3:30,139,077
INFO	2017-10-04 21:42:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:42:24	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:04:27s.  Time for last 1,000,000:   16s.  Last read position: chr3:53,252,555
INFO	2017-10-04 21:42:24	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:42:41	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:04:45s.  Time for last 1,000,000:   17s.  Last read position: chr3:84,315,738
INFO	2017-10-04 21:42:42	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:43:03	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:05:06s.  Time for last 1,000,000:   21s.  Last read position: chr3:118,981,140
INFO	2017-10-04 21:43:03	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:43:18	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:05:21s.  Time for last 1,000,000:   14s.  Last read position: chr3:144,049,032
INFO	2017-10-04 21:43:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:43:34	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:05:38s.  Time for last 1,000,000:   16s.  Last read position: chr3:175,710,831
INFO	2017-10-04 21:43:34	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:43:52	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:05:55s.  Time for last 1,000,000:   17s.  Last read position: chr4:2,588,658
INFO	2017-10-04 21:43:52	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:44:09	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:06:13s.  Time for last 1,000,000:   17s.  Last read position: chr4:30,132,801
INFO	2017-10-04 21:44:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:44:28	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:06:31s.  Time for last 1,000,000:   18s.  Last read position: chr4:65,017,088
INFO	2017-10-04 21:44:28	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:44:43	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:06:47s.  Time for last 1,000,000:   15s.  Last read position: chr4:97,128,154
INFO	2017-10-04 21:44:43	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:45:03	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:07:06s.  Time for last 1,000,000:   19s.  Last read position: chr4:129,919,607
INFO	2017-10-04 21:45:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:45:20	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:07:23s.  Time for last 1,000,000:   17s.  Last read position: chr4:162,293,653
INFO	2017-10-04 21:45:20	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:45:39	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:07:42s.  Time for last 1,000,000:   18s.  Last read position: chr5:1,807,040
INFO	2017-10-04 21:45:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:45:55	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:07:59s.  Time for last 1,000,000:   16s.  Last read position: chr5:33,246,572
INFO	2017-10-04 21:45:55	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:46:14	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:08:17s.  Time for last 1,000,000:   18s.  Last read position: chr5:67,913,628
INFO	2017-10-04 21:46:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:46:33	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:08:36s.  Time for last 1,000,000:   18s.  Last read position: chr5:100,422,138
INFO	2017-10-04 21:46:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:46:48	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:08:51s.  Time for last 1,000,000:   15s.  Last read position: chr5:132,077,295
INFO	2017-10-04 21:46:48	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:47:09	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:09:12s.  Time for last 1,000,000:   21s.  Last read position: chr5:155,576,106
INFO	2017-10-04 21:47:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:47:26	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:09:29s.  Time for last 1,000,000:   16s.  Last read position: chr5:181,158,955
INFO	2017-10-04 21:47:26	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:47:41	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:09:44s.  Time for last 1,000,000:   15s.  Last read position: chr6:26,250,176
INFO	2017-10-04 21:47:41	MarkDuplicates	Tracking 20 as yet unmatched pairs. 20 records in RAM.
INFO	2017-10-04 21:47:59	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:10:02s.  Time for last 1,000,000:   18s.  Last read position: chr6:49,177,338
INFO	2017-10-04 21:47:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:48:18	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:10:21s.  Time for last 1,000,000:   18s.  Last read position: chr6:85,394,991
INFO	2017-10-04 21:48:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:48:36	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:10:39s.  Time for last 1,000,000:   17s.  Last read position: chr6:116,073,923
INFO	2017-10-04 21:48:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:48:53	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:10:56s.  Time for last 1,000,000:   17s.  Last read position: chr6:145,705,797
INFO	2017-10-04 21:48:53	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:49:14	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:11:18s.  Time for last 1,000,000:   21s.  Last read position: chr7:197,748
INFO	2017-10-04 21:49:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:49:30	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:11:34s.  Time for last 1,000,000:   15s.  Last read position: chr7:26,576,169
INFO	2017-10-04 21:49:30	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:49:47	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:11:50s.  Time for last 1,000,000:   16s.  Last read position: chr7:53,505,391
INFO	2017-10-04 21:49:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:50:07	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:12:10s.  Time for last 1,000,000:   19s.  Last read position: chr7:90,501,547
INFO	2017-10-04 21:50:07	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:50:23	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:12:26s.  Time for last 1,000,000:   15s.  Last read position: chr7:118,966,451
INFO	2017-10-04 21:50:23	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:50:41	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:12:44s.  Time for last 1,000,000:   17s.  Last read position: chr7:147,711,852
INFO	2017-10-04 21:50:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:50:59	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:13:02s.  Time for last 1,000,000:   18s.  Last read position: chr8:15,864,257
INFO	2017-10-04 21:50:59	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:51:19	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:13:23s.  Time for last 1,000,000:   20s.  Last read position: chr8:42,255,110
INFO	2017-10-04 21:51:19	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:51:39	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:13:43s.  Time for last 1,000,000:   19s.  Last read position: chr8:73,952,293
INFO	2017-10-04 21:51:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:51:57	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:14:00s.  Time for last 1,000,000:   17s.  Last read position: chr8:104,449,151
INFO	2017-10-04 21:51:57	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:52:15	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:14:18s.  Time for last 1,000,000:   18s.  Last read position: chr8:133,375,570
INFO	2017-10-04 21:52:15	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 21:52:33	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:14:36s.  Time for last 1,000,000:   17s.  Last read position: chr9:12,845,002
INFO	2017-10-04 21:52:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:52:50	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:14:54s.  Time for last 1,000,000:   17s.  Last read position: chr9:70,963,123
INFO	2017-10-04 21:52:50	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:53:09	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:15:12s.  Time for last 1,000,000:   18s.  Last read position: chr9:99,366,314
INFO	2017-10-04 21:53:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:53:21	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:15:24s.  Time for last 1,000,000:   12s.  Last read position: chr9:126,915,532
INFO	2017-10-04 21:53:21	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:53:30	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:15:33s.  Time for last 1,000,000:    8s.  Last read position: chr10:6,910,976
INFO	2017-10-04 21:53:30	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:53:38	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:15:42s.  Time for last 1,000,000:    8s.  Last read position: chr10:35,686,743
INFO	2017-10-04 21:53:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:53:49	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:15:53s.  Time for last 1,000,000:   11s.  Last read position: chr10:70,174,444
INFO	2017-10-04 21:53:49	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 21:53:59	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:16:02s.  Time for last 1,000,000:    9s.  Last read position: chr10:95,791,278
INFO	2017-10-04 21:53:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:54:06	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:16:10s.  Time for last 1,000,000:    7s.  Last read position: chr10:121,346,686
INFO	2017-10-04 21:54:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:54:16	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:16:19s.  Time for last 1,000,000:    9s.  Last read position: chr11:9,236,596
INFO	2017-10-04 21:54:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:54:36	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:16:39s.  Time for last 1,000,000:   20s.  Last read position: chr11:38,008,937
INFO	2017-10-04 21:54:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:54:44	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:16:48s.  Time for last 1,000,000:    8s.  Last read position: chr11:66,330,142
INFO	2017-10-04 21:54:44	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:54:53	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:16:57s.  Time for last 1,000,000:    9s.  Last read position: chr11:92,574,671
INFO	2017-10-04 21:54:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:55:04	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:17:07s.  Time for last 1,000,000:   10s.  Last read position: chr11:119,946,782
INFO	2017-10-04 21:55:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:55:14	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:17:17s.  Time for last 1,000,000:    9s.  Last read position: chr12:8,960,438
INFO	2017-10-04 21:55:14	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:55:22	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:17:26s.  Time for last 1,000,000:    8s.  Last read position: chr12:42,927,219
INFO	2017-10-04 21:55:22	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:55:32	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:17:35s.  Time for last 1,000,000:    9s.  Last read position: chr12:68,206,490
INFO	2017-10-04 21:55:32	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:55:45	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:17:48s.  Time for last 1,000,000:   13s.  Last read position: chr12:98,645,167
INFO	2017-10-04 21:55:45	MarkDuplicates	Tracking 34 as yet unmatched pairs. 34 records in RAM.
INFO	2017-10-04 21:55:53	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:17:56s.  Time for last 1,000,000:    7s.  Last read position: chr12:123,374,986
INFO	2017-10-04 21:55:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:56:01	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:18:04s.  Time for last 1,000,000:    7s.  Last read position: chr13:34,045,291
INFO	2017-10-04 21:56:01	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:56:13	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:18:17s.  Time for last 1,000,000:   12s.  Last read position: chr13:65,229,776
INFO	2017-10-04 21:56:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:56:28	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:18:32s.  Time for last 1,000,000:   15s.  Last read position: chr13:98,676,147
INFO	2017-10-04 21:56:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:56:39	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:18:42s.  Time for last 1,000,000:   10s.  Last read position: chr14:30,960,762
INFO	2017-10-04 21:56:39	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:56:46	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:18:50s.  Time for last 1,000,000:    7s.  Last read position: chr14:62,235,949
INFO	2017-10-04 21:56:46	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:57:00	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:19:03s.  Time for last 1,000,000:   13s.  Last read position: chr14:89,820,950
INFO	2017-10-04 21:57:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:57:10	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:19:13s.  Time for last 1,000,000:    9s.  Last read position: chr15:28,907,798
INFO	2017-10-04 21:57:10	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:57:18	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:19:21s.  Time for last 1,000,000:    8s.  Last read position: chr15:60,111,614
INFO	2017-10-04 21:57:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:57:28	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:19:32s.  Time for last 1,000,000:   10s.  Last read position: chr15:86,505,279
INFO	2017-10-04 21:57:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:57:38	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:19:41s.  Time for last 1,000,000:    9s.  Last read position: chr16:8,315,193
INFO	2017-10-04 21:57:38	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:57:47	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:19:50s.  Time for last 1,000,000:    8s.  Last read position: chr16:49,690,128
INFO	2017-10-04 21:57:47	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:57:55	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:19:58s.  Time for last 1,000,000:    8s.  Last read position: chr16:75,652,791
INFO	2017-10-04 21:57:55	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:58:11	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:20:14s.  Time for last 1,000,000:   16s.  Last read position: chr17:7,135,609
INFO	2017-10-04 21:58:11	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:58:20	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:20:23s.  Time for last 1,000,000:    9s.  Last read position: chr17:37,392,680
INFO	2017-10-04 21:58:20	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:58:27	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:20:30s.  Time for last 1,000,000:    7s.  Last read position: chr17:62,089,641
INFO	2017-10-04 21:58:27	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:58:38	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:20:41s.  Time for last 1,000,000:   10s.  Last read position: chr17:82,686,645
INFO	2017-10-04 21:58:38	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 21:58:46	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:20:49s.  Time for last 1,000,000:    7s.  Last read position: chr18:34,312,106
INFO	2017-10-04 21:58:46	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:58:55	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:20:58s.  Time for last 1,000,000:    8s.  Last read position: chr18:61,992,693
INFO	2017-10-04 21:58:55	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:59:11	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:21:15s.  Time for last 1,000,000:   16s.  Last read position: chr19:4,394,238
INFO	2017-10-04 21:59:11	MarkDuplicates	Tracking 10 as yet unmatched pairs. 10 records in RAM.
INFO	2017-10-04 21:59:19	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:21:22s.  Time for last 1,000,000:    7s.  Last read position: chr19:27,626,572
INFO	2017-10-04 21:59:19	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 21:59:28	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:21:31s.  Time for last 1,000,000:    9s.  Last read position: chr19:48,979,532
INFO	2017-10-04 21:59:28	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 21:59:36	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:21:39s.  Time for last 1,000,000:    8s.  Last read position: chr20:15,420,786
INFO	2017-10-04 21:59:36	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:59:49	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:21:52s.  Time for last 1,000,000:   12s.  Last read position: chr20:44,637,666
INFO	2017-10-04 21:59:49	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 21:59:59	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:22:03s.  Time for last 1,000,000:   10s.  Last read position: chr21:16,236,919
INFO	2017-10-04 21:59:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:00:08	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:22:11s.  Time for last 1,000,000:    8s.  Last read position: chr21:44,946,608
INFO	2017-10-04 22:00:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:00:23	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:22:26s.  Time for last 1,000,000:   15s.  Last read position: chr22:37,875,882
INFO	2017-10-04 22:00:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:00:31	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:22:34s.  Time for last 1,000,000:    7s.  Last read position: chrX:10,345,076
INFO	2017-10-04 22:00:31	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 22:00:40	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:22:43s.  Time for last 1,000,000:    9s.  Last read position: chrX:43,656,168
INFO	2017-10-04 22:00:40	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 22:00:48	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:22:51s.  Time for last 1,000,000:    8s.  Last read position: chrX:85,334,087
INFO	2017-10-04 22:00:48	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 22:01:00	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:23:03s.  Time for last 1,000,000:   11s.  Last read position: chrX:124,268,237
INFO	2017-10-04 22:01:00	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:01:09	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:23:12s.  Time for last 1,000,000:    8s.  Last read position: chr22_KI270736v1_random:156,443
INFO	2017-10-04 22:01:09	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 22:01:09	MarkDuplicates	Read 102049880 records. 0 pairs never matched.
INFO	2017-10-04 22:01:13	MarkDuplicates	After buildSortedReadEndLists freeMemory: 903974288; totalMemory: 913833984; maxMemory: 954728448
INFO	2017-10-04 22:01:13	MarkDuplicates	Will retain up to 29835264 duplicate indices before spilling to disk.
INFO	2017-10-04 22:01:13	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 22:01:37	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 22:02:16	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 22:02:17	MarkDuplicates	After generateDuplicateIndexes freeMemory: 677880080; totalMemory: 926416896; maxMemory: 954728448
INFO	2017-10-04 22:02:17	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 22:02:17	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 22:02:17	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 22:04:16	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:01:59s.  Time for last 10,000,000:  119s.  Last read position: chr2:42,753,115
INFO	2017-10-04 22:06:21	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:04s.  Time for last 10,000,000:  125s.  Last read position: chr3:84,315,738
INFO	2017-10-04 22:08:25	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:08s.  Time for last 10,000,000:  123s.  Last read position: chr5:1,807,040
INFO	2017-10-04 22:10:27	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:10s.  Time for last 10,000,000:  121s.  Last read position: chr6:116,073,923
INFO	2017-10-04 22:12:28	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:10:11s.  Time for last 10,000,000:  121s.  Last read position: chr8:73,952,293
INFO	2017-10-04 22:14:29	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:12:12s.  Time for last 10,000,000:  120s.  Last read position: chr10:95,791,278
INFO	2017-10-04 22:16:30	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:14:13s.  Time for last 10,000,000:  120s.  Last read position: chr12:98,645,167
INFO	2017-10-04 22:18:36	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:16:19s.  Time for last 10,000,000:  126s.  Last read position: chr15:86,505,279
INFO	2017-10-04 22:20:39	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:18:22s.  Time for last 10,000,000:  123s.  Last read position: chr19:4,394,238
INFO	2017-10-04 22:22:41	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:20:24s.  Time for last 10,000,000:  121s.  Last read position: chrX:85,334,087
INFO	2017-10-04 22:23:06	MarkDuplicates	Before output close freeMemory: 921683272; totalMemory: 932184064; maxMemory: 954728448
INFO	2017-10-04 22:23:06	MarkDuplicates	After output close freeMemory: 921669728; totalMemory: 932184064; maxMemory: 954728448
[Wed Oct 04 22:23:06 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 45.18 minutes.
Runtime.totalMemory()=932184064
</pre>
Process 7248 returned: (0). Elapsed: 0:45:36.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`

<pre>
</pre>
Process 8821 returned: (0). Elapsed: 0:04:38. Peak memory: (Process: 0.02GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 8863 returned: (0). Elapsed: 0:15:34. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n spleen_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Wed, 04 Oct 2017 22:43:44: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n spleen_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = spleen_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Wed, 04 Oct 2017 22:43:44: #1 read tag files... 
INFO  @ Wed, 04 Oct 2017 22:43:44: #1 read treatment tags... 
INFO  @ Wed, 04 Oct 2017 22:43:46:  1000000 
INFO  @ Wed, 04 Oct 2017 22:43:48:  2000000 
INFO  @ Wed, 04 Oct 2017 22:43:51:  3000000 
INFO  @ Wed, 04 Oct 2017 22:43:53:  4000000 
INFO  @ Wed, 04 Oct 2017 22:43:55:  5000000 
INFO  @ Wed, 04 Oct 2017 22:43:57:  6000000 
INFO  @ Wed, 04 Oct 2017 22:43:59:  7000000 
INFO  @ Wed, 04 Oct 2017 22:44:02:  8000000 
INFO  @ Wed, 04 Oct 2017 22:44:04:  9000000 
INFO  @ Wed, 04 Oct 2017 22:44:07:  10000000 
INFO  @ Wed, 04 Oct 2017 22:44:09:  11000000 
INFO  @ Wed, 04 Oct 2017 22:44:11:  12000000 
INFO  @ Wed, 04 Oct 2017 22:44:13:  13000000 
INFO  @ Wed, 04 Oct 2017 22:44:16:  14000000 
INFO  @ Wed, 04 Oct 2017 22:44:18:  15000000 
INFO  @ Wed, 04 Oct 2017 22:44:20:  16000000 
INFO  @ Wed, 04 Oct 2017 22:44:22:  17000000 
INFO  @ Wed, 04 Oct 2017 22:44:25:  18000000 
INFO  @ Wed, 04 Oct 2017 22:44:27:  19000000 
INFO  @ Wed, 04 Oct 2017 22:44:29:  20000000 
INFO  @ Wed, 04 Oct 2017 22:44:32:  21000000 
INFO  @ Wed, 04 Oct 2017 22:44:34:  22000000 
INFO  @ Wed, 04 Oct 2017 22:44:36:  23000000 
INFO  @ Wed, 04 Oct 2017 22:44:39:  24000000 
INFO  @ Wed, 04 Oct 2017 22:44:41:  25000000 
INFO  @ Wed, 04 Oct 2017 22:44:44:  26000000 
INFO  @ Wed, 04 Oct 2017 22:44:46:  27000000 
INFO  @ Wed, 04 Oct 2017 22:44:48:  28000000 
INFO  @ Wed, 04 Oct 2017 22:44:51:  29000000 
INFO  @ Wed, 04 Oct 2017 22:44:53:  30000000 
INFO  @ Wed, 04 Oct 2017 22:44:55:  31000000 
INFO  @ Wed, 04 Oct 2017 22:44:58:  32000000 
INFO  @ Wed, 04 Oct 2017 22:45:00:  33000000 
INFO  @ Wed, 04 Oct 2017 22:45:03:  34000000 
INFO  @ Wed, 04 Oct 2017 22:45:05:  35000000 
INFO  @ Wed, 04 Oct 2017 22:45:08:  36000000 
INFO  @ Wed, 04 Oct 2017 22:45:10:  37000000 
INFO  @ Wed, 04 Oct 2017 22:45:12:  38000000 
INFO  @ Wed, 04 Oct 2017 22:45:14:  39000000 
INFO  @ Wed, 04 Oct 2017 22:45:17:  40000000 
INFO  @ Wed, 04 Oct 2017 22:45:19:  41000000 
INFO  @ Wed, 04 Oct 2017 22:45:22:  42000000 
INFO  @ Wed, 04 Oct 2017 22:45:24:  43000000 
INFO  @ Wed, 04 Oct 2017 22:45:26:  44000000 
INFO  @ Wed, 04 Oct 2017 22:45:28:  45000000 
INFO  @ Wed, 04 Oct 2017 22:45:31:  46000000 
INFO  @ Wed, 04 Oct 2017 22:45:33:  47000000 
INFO  @ Wed, 04 Oct 2017 22:45:35:  48000000 
INFO  @ Wed, 04 Oct 2017 22:45:38:  49000000 
INFO  @ Wed, 04 Oct 2017 22:45:40:  50000000 
INFO  @ Wed, 04 Oct 2017 22:45:42:  51000000 
INFO  @ Wed, 04 Oct 2017 22:45:45:  52000000 
INFO  @ Wed, 04 Oct 2017 22:45:47:  53000000 
INFO  @ Wed, 04 Oct 2017 22:45:49:  54000000 
INFO  @ Wed, 04 Oct 2017 22:45:52:  55000000 
INFO  @ Wed, 04 Oct 2017 22:45:54:  56000000 
INFO  @ Wed, 04 Oct 2017 22:45:57:  57000000 
INFO  @ Wed, 04 Oct 2017 22:45:59:  58000000 
INFO  @ Wed, 04 Oct 2017 22:46:01:  59000000 
INFO  @ Wed, 04 Oct 2017 22:46:04:  60000000 
INFO  @ Wed, 04 Oct 2017 22:46:06:  61000000 
INFO  @ Wed, 04 Oct 2017 22:46:08:  62000000 
INFO  @ Wed, 04 Oct 2017 22:46:11:  63000000 
INFO  @ Wed, 04 Oct 2017 22:46:13:  64000000 
INFO  @ Wed, 04 Oct 2017 22:46:15:  65000000 
INFO  @ Wed, 04 Oct 2017 22:46:18:  66000000 
INFO  @ Wed, 04 Oct 2017 22:46:20:  67000000 
INFO  @ Wed, 04 Oct 2017 22:46:22:  68000000 
INFO  @ Wed, 04 Oct 2017 22:46:25:  69000000 
INFO  @ Wed, 04 Oct 2017 22:46:27:  70000000 
INFO  @ Wed, 04 Oct 2017 22:46:30:  71000000 
INFO  @ Wed, 04 Oct 2017 22:46:32:  72000000 
INFO  @ Wed, 04 Oct 2017 22:46:34:  73000000 
INFO  @ Wed, 04 Oct 2017 22:46:37:  74000000 
INFO  @ Wed, 04 Oct 2017 22:46:39:  75000000 
INFO  @ Wed, 04 Oct 2017 22:46:41:  76000000 
INFO  @ Wed, 04 Oct 2017 22:46:43:  77000000 
INFO  @ Wed, 04 Oct 2017 22:46:46:  78000000 
INFO  @ Wed, 04 Oct 2017 22:46:48:  79000000 
INFO  @ Wed, 04 Oct 2017 22:46:50:  80000000 
INFO  @ Wed, 04 Oct 2017 22:46:52:  81000000 
INFO  @ Wed, 04 Oct 2017 22:46:55:  82000000 
INFO  @ Wed, 04 Oct 2017 22:46:57:  83000000 
INFO  @ Wed, 04 Oct 2017 22:46:59:  84000000 
INFO  @ Wed, 04 Oct 2017 22:47:02:  85000000 
INFO  @ Wed, 04 Oct 2017 22:47:04:  86000000 
INFO  @ Wed, 04 Oct 2017 22:47:06:  87000000 
INFO  @ Wed, 04 Oct 2017 22:47:09:  88000000 
INFO  @ Wed, 04 Oct 2017 22:47:11:  89000000 
INFO  @ Wed, 04 Oct 2017 22:47:13:  90000000 
INFO  @ Wed, 04 Oct 2017 22:47:15:  91000000 
INFO  @ Wed, 04 Oct 2017 22:47:17:  92000000 
INFO  @ Wed, 04 Oct 2017 22:47:20:  93000000 
INFO  @ Wed, 04 Oct 2017 22:47:22:  94000000 
INFO  @ Wed, 04 Oct 2017 22:47:24:  95000000 
INFO  @ Wed, 04 Oct 2017 22:47:26:  96000000 
INFO  @ Wed, 04 Oct 2017 22:47:28:  97000000 
INFO  @ Wed, 04 Oct 2017 22:47:31:  98000000 
INFO  @ Wed, 04 Oct 2017 22:47:33:  99000000 
INFO  @ Wed, 04 Oct 2017 22:47:35:  100000000 
INFO  @ Wed, 04 Oct 2017 22:47:37:  101000000 
INFO  @ Wed, 04 Oct 2017 22:47:39:  102000000 
INFO  @ Wed, 04 Oct 2017 22:47:42: #1 tag size is determined as 50 bps 
INFO  @ Wed, 04 Oct 2017 22:47:42: #1 tag size = 50 
INFO  @ Wed, 04 Oct 2017 22:47:42: #1  total tags in treatment: 102049880 
INFO  @ Wed, 04 Oct 2017 22:47:42: #1 user defined the maximum tags... 
INFO  @ Wed, 04 Oct 2017 22:47:42: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Wed, 04 Oct 2017 22:47:53: #1  tags after filtering in treatment: 93652694 
INFO  @ Wed, 04 Oct 2017 22:47:53: #1  Redundant rate of treatment: 0.08 
INFO  @ Wed, 04 Oct 2017 22:47:53: #1 finished! 
INFO  @ Wed, 04 Oct 2017 22:47:53: #2 Build Peak Model... 
INFO  @ Wed, 04 Oct 2017 22:47:53: #2 Skipped... 
INFO  @ Wed, 04 Oct 2017 22:47:53: #2 Use 200 as fragment length 
INFO  @ Wed, 04 Oct 2017 22:47:53: #3 Call peaks... 
INFO  @ Wed, 04 Oct 2017 22:47:53: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Wed, 04 Oct 2017 22:53:44: #3 Call peaks for each chromosome... 
INFO  @ Wed, 04 Oct 2017 22:56:53: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.xls 
INFO  @ Wed, 04 Oct 2017 22:56:53: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak 
INFO  @ Wed, 04 Oct 2017 22:56:54: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_summits.bed 
INFO  @ Wed, 04 Oct 2017 22:56:54: Done! 
</pre>
Process 9176 returned: (0). Elapsed: 0:13:34. Peak memory: (Process: 1.124GB; Pipeline: 1.421GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Wed Oct 04 22:57:18 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Oct 04 22:57:18 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-04 22:57:18	MarkDuplicates	Start of doWork freeMemory: 503974744; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-04 22:57:18	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-04 22:57:18	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-04 22:57:30	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:12s.  Time for last 1,000,000:   11s.  Last read position: chr1:17,184,084
INFO	2017-10-04 22:57:30	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:57:38	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:20s.  Time for last 1,000,000:    8s.  Last read position: chr1:35,511,443
INFO	2017-10-04 22:57:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:57:49	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:31s.  Time for last 1,000,000:   10s.  Last read position: chr1:57,345,189
INFO	2017-10-04 22:57:49	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:58:00	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:41s.  Time for last 1,000,000:   10s.  Last read position: chr1:86,411,143
INFO	2017-10-04 22:58:00	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 22:58:09	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:50s.  Time for last 1,000,000:    8s.  Last read position: chr1:113,925,340
INFO	2017-10-04 22:58:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:58:18	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:00:59s.  Time for last 1,000,000:    8s.  Last read position: chr1:161,185,397
INFO	2017-10-04 22:58:18	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 22:58:34	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:15s.  Time for last 1,000,000:   15s.  Last read position: chr1:187,469,246
INFO	2017-10-04 22:58:34	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:58:42	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:24s.  Time for last 1,000,000:    8s.  Last read position: chr1:212,415,038
INFO	2017-10-04 22:58:42	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 22:58:51	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:33s.  Time for last 1,000,000:    9s.  Last read position: chr1:236,139,080
INFO	2017-10-04 22:58:51	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 22:59:00	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:41s.  Time for last 1,000,000:    8s.  Last read position: chr2:12,734,012
INFO	2017-10-04 22:59:00	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 22:59:12	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:54s.  Time for last 1,000,000:   12s.  Last read position: chr2:37,949,982
INFO	2017-10-04 22:59:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:59:20	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:02:01s.  Time for last 1,000,000:    7s.  Last read position: chr2:64,144,014
INFO	2017-10-04 22:59:20	MarkDuplicates	Tracking 66 as yet unmatched pairs. 66 records in RAM.
INFO	2017-10-04 22:59:28	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:10s.  Time for last 1,000,000:    8s.  Last read position: chr2:95,683,088
INFO	2017-10-04 22:59:28	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 22:59:41	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:22s.  Time for last 1,000,000:   12s.  Last read position: chr2:122,139,023
INFO	2017-10-04 22:59:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 22:59:49	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:02:31s.  Time for last 1,000,000:    8s.  Last read position: chr2:152,884,578
INFO	2017-10-04 22:59:49	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 22:59:56	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:02:38s.  Time for last 1,000,000:    6s.  Last read position: chr2:181,408,411
INFO	2017-10-04 22:59:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:00:06	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:02:48s.  Time for last 1,000,000:    9s.  Last read position: chr2:210,171,456
INFO	2017-10-04 23:00:06	MarkDuplicates	Tracking 114 as yet unmatched pairs. 114 records in RAM.
INFO	2017-10-04 23:00:16	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:02:58s.  Time for last 1,000,000:   10s.  Last read position: chr2:234,268,915
INFO	2017-10-04 23:00:16	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:00:27	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:03:08s.  Time for last 1,000,000:   10s.  Last read position: chr3:13,929,237
INFO	2017-10-04 23:00:27	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:00:35	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:03:17s.  Time for last 1,000,000:    8s.  Last read position: chr3:40,783,058
INFO	2017-10-04 23:00:35	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:00:49	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:03:31s.  Time for last 1,000,000:   14s.  Last read position: chr3:61,013,473
INFO	2017-10-04 23:00:49	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:00:57	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:03:38s.  Time for last 1,000,000:    7s.  Last read position: chr3:94,461,657
INFO	2017-10-04 23:00:57	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:01:05	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:03:47s.  Time for last 1,000,000:    8s.  Last read position: chr3:123,078,609
INFO	2017-10-04 23:01:05	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:01:12	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:03:54s.  Time for last 1,000,000:    7s.  Last read position: chr3:147,269,192
INFO	2017-10-04 23:01:12	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:01:25	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:04:06s.  Time for last 1,000,000:   12s.  Last read position: chr3:175,863,690
INFO	2017-10-04 23:01:25	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:01:32	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:04:14s.  Time for last 1,000,000:    7s.  Last read position: chr4:1,345,940
INFO	2017-10-04 23:01:32	MarkDuplicates	Tracking 20 as yet unmatched pairs. 20 records in RAM.
INFO	2017-10-04 23:01:43	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:04:24s.  Time for last 1,000,000:   10s.  Last read position: chr4:26,725,080
INFO	2017-10-04 23:01:43	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:01:57	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:04:38s.  Time for last 1,000,000:   13s.  Last read position: chr4:59,696,110
INFO	2017-10-04 23:01:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:02:06	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:04:47s.  Time for last 1,000,000:    9s.  Last read position: chr4:90,174,917
INFO	2017-10-04 23:02:06	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 23:02:15	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:04:56s.  Time for last 1,000,000:    8s.  Last read position: chr4:122,040,534
INFO	2017-10-04 23:02:15	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:02:22	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:05:04s.  Time for last 1,000,000:    7s.  Last read position: chr4:152,860,629
INFO	2017-10-04 23:02:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:02:35	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:05:16s.  Time for last 1,000,000:   12s.  Last read position: chr4:183,799,947
INFO	2017-10-04 23:02:35	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:02:43	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:05:25s.  Time for last 1,000,000:    8s.  Last read position: chr5:21,005,579
INFO	2017-10-04 23:02:43	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:02:51	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:05:33s.  Time for last 1,000,000:    8s.  Last read position: chr5:56,201,399
INFO	2017-10-04 23:02:51	MarkDuplicates	Tracking 46 as yet unmatched pairs. 46 records in RAM.
INFO	2017-10-04 23:03:08	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:05:50s.  Time for last 1,000,000:   16s.  Last read position: chr5:85,877,397
INFO	2017-10-04 23:03:08	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:03:17	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:05:59s.  Time for last 1,000,000:    9s.  Last read position: chr5:116,112,674
INFO	2017-10-04 23:03:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:03:28	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:06:10s.  Time for last 1,000,000:   10s.  Last read position: chr5:141,475,594
INFO	2017-10-04 23:03:28	MarkDuplicates	Tracking 14 as yet unmatched pairs. 14 records in RAM.
INFO	2017-10-04 23:03:36	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:06:18s.  Time for last 1,000,000:    8s.  Last read position: chr5:167,508,392
INFO	2017-10-04 23:03:36	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:03:47	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:06:28s.  Time for last 1,000,000:   10s.  Last read position: chr6:7,296,101
INFO	2017-10-04 23:03:47	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:03:56	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:06:38s.  Time for last 1,000,000:    9s.  Last read position: chr6:31,781,032
INFO	2017-10-04 23:03:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:04:04	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:06:46s.  Time for last 1,000,000:    7s.  Last read position: chr6:51,767,090
INFO	2017-10-04 23:04:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:04:19	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:07:01s.  Time for last 1,000,000:   15s.  Last read position: chr6:85,566,564
INFO	2017-10-04 23:04:19	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:04:26	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:07:08s.  Time for last 1,000,000:    6s.  Last read position: chr6:113,936,484
INFO	2017-10-04 23:04:26	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:04:37	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:07:19s.  Time for last 1,000,000:   10s.  Last read position: chr6:142,331,996
INFO	2017-10-04 23:04:37	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:04:49	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:07:30s.  Time for last 1,000,000:   11s.  Last read position: chr6:167,292,175
INFO	2017-10-04 23:04:49	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:04:55	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:07:37s.  Time for last 1,000,000:    6s.  Last read position: chr7:19,737,816
INFO	2017-10-04 23:04:55	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:05:03	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:07:45s.  Time for last 1,000,000:    8s.  Last read position: chr7:45,238,307
INFO	2017-10-04 23:05:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:05:13	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:07:54s.  Time for last 1,000,000:    9s.  Last read position: chr7:79,343,863
INFO	2017-10-04 23:05:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:05:25	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:08:06s.  Time for last 1,000,000:   12s.  Last read position: chr7:106,065,376
INFO	2017-10-04 23:05:25	MarkDuplicates	Tracking 78 as yet unmatched pairs. 78 records in RAM.
INFO	2017-10-04 23:05:33	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:08:15s.  Time for last 1,000,000:    8s.  Last read position: chr7:134,513,353
INFO	2017-10-04 23:05:33	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:05:43	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:08:24s.  Time for last 1,000,000:    9s.  Last read position: chr8:343,428
INFO	2017-10-04 23:05:43	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:05:53	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:08:35s.  Time for last 1,000,000:   10s.  Last read position: chr8:27,677,097
INFO	2017-10-04 23:05:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:06:01	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:08:43s.  Time for last 1,000,000:    7s.  Last read position: chr8:56,954,633
INFO	2017-10-04 23:06:01	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:06:10	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:08:51s.  Time for last 1,000,000:    8s.  Last read position: chr8:86,921,742
INFO	2017-10-04 23:06:10	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:06:17	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:08:59s.  Time for last 1,000,000:    7s.  Last read position: chr8:115,385,582
INFO	2017-10-04 23:06:17	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:06:32	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:09:14s.  Time for last 1,000,000:   14s.  Last read position: chr8:141,150,102
INFO	2017-10-04 23:06:32	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 23:06:40	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:09:22s.  Time for last 1,000,000:    8s.  Last read position: chr9:19,798,372
INFO	2017-10-04 23:06:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:06:47	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:09:28s.  Time for last 1,000,000:    6s.  Last read position: chr9:74,590,872
INFO	2017-10-04 23:06:47	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:06:58	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:09:40s.  Time for last 1,000,000:   11s.  Last read position: chr9:99,583,718
INFO	2017-10-04 23:06:58	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:07:07	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:09:48s.  Time for last 1,000,000:    8s.  Last read position: chr9:125,189,895
INFO	2017-10-04 23:07:07	MarkDuplicates	Tracking 52 as yet unmatched pairs. 52 records in RAM.
INFO	2017-10-04 23:07:14	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:09:56s.  Time for last 1,000,000:    7s.  Last read position: chr10:1,432,270
INFO	2017-10-04 23:07:14	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:07:22	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:10:04s.  Time for last 1,000,000:    8s.  Last read position: chr10:29,140,231
INFO	2017-10-04 23:07:22	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:07:35	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:10:17s.  Time for last 1,000,000:   12s.  Last read position: chr10:62,817,227
INFO	2017-10-04 23:07:35	MarkDuplicates	Tracking 30 as yet unmatched pairs. 30 records in RAM.
INFO	2017-10-04 23:07:43	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:10:25s.  Time for last 1,000,000:    8s.  Last read position: chr10:86,756,370
INFO	2017-10-04 23:07:43	MarkDuplicates	Tracking 78 as yet unmatched pairs. 78 records in RAM.
INFO	2017-10-04 23:07:51	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:10:32s.  Time for last 1,000,000:    7s.  Last read position: chr10:110,919,347
INFO	2017-10-04 23:07:51	MarkDuplicates	Tracking 168 as yet unmatched pairs. 168 records in RAM.
INFO	2017-10-04 23:08:02	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:10:43s.  Time for last 1,000,000:   11s.  Last read position: chr11:560,149
INFO	2017-10-04 23:08:02	MarkDuplicates	Tracking 16 as yet unmatched pairs. 16 records in RAM.
INFO	2017-10-04 23:08:09	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:10:50s.  Time for last 1,000,000:    7s.  Last read position: chr11:20,482,376
INFO	2017-10-04 23:08:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:08:16	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:10:58s.  Time for last 1,000,000:    7s.  Last read position: chr11:49,382,530
INFO	2017-10-04 23:08:16	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:08:25	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:11:06s.  Time for last 1,000,000:    8s.  Last read position: chr11:69,640,530
INFO	2017-10-04 23:08:25	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:08:38	MarkDuplicates	Read    70,000,000 records.  Elapsed time: 00:11:20s.  Time for last 1,000,000:   13s.  Last read position: chr11:96,045,116
INFO	2017-10-04 23:08:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:08:46	MarkDuplicates	Read    71,000,000 records.  Elapsed time: 00:11:27s.  Time for last 1,000,000:    7s.  Last read position: chr11:121,797,538
INFO	2017-10-04 23:08:46	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:08:56	MarkDuplicates	Read    72,000,000 records.  Elapsed time: 00:11:38s.  Time for last 1,000,000:   10s.  Last read position: chr12:9,647,943
INFO	2017-10-04 23:08:56	MarkDuplicates	Tracking 20 as yet unmatched pairs. 20 records in RAM.
INFO	2017-10-04 23:09:06	MarkDuplicates	Read    73,000,000 records.  Elapsed time: 00:11:48s.  Time for last 1,000,000:   10s.  Last read position: chr12:41,983,171
INFO	2017-10-04 23:09:06	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:09:14	MarkDuplicates	Read    74,000,000 records.  Elapsed time: 00:11:55s.  Time for last 1,000,000:    7s.  Last read position: chr12:63,063,372
INFO	2017-10-04 23:09:14	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:09:23	MarkDuplicates	Read    75,000,000 records.  Elapsed time: 00:12:04s.  Time for last 1,000,000:    9s.  Last read position: chr12:93,723,301
INFO	2017-10-04 23:09:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:09:32	MarkDuplicates	Read    76,000,000 records.  Elapsed time: 00:12:13s.  Time for last 1,000,000:    8s.  Last read position: chr12:119,068,885
INFO	2017-10-04 23:09:32	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:09:45	MarkDuplicates	Read    77,000,000 records.  Elapsed time: 00:12:26s.  Time for last 1,000,000:   13s.  Last read position: chr13:26,941,479
INFO	2017-10-04 23:09:45	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:09:56	MarkDuplicates	Read    78,000,000 records.  Elapsed time: 00:12:37s.  Time for last 1,000,000:   10s.  Last read position: chr13:52,008,650
INFO	2017-10-04 23:09:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:10:05	MarkDuplicates	Read    79,000,000 records.  Elapsed time: 00:12:46s.  Time for last 1,000,000:    9s.  Last read position: chr13:85,543,370
INFO	2017-10-04 23:10:05	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:10:15	MarkDuplicates	Read    80,000,000 records.  Elapsed time: 00:12:56s.  Time for last 1,000,000:    9s.  Last read position: chr13:113,490,115
INFO	2017-10-04 23:10:15	MarkDuplicates	Tracking 18 as yet unmatched pairs. 18 records in RAM.
INFO	2017-10-04 23:10:22	MarkDuplicates	Read    81,000,000 records.  Elapsed time: 00:13:03s.  Time for last 1,000,000:    6s.  Last read position: chr14:45,230,823
INFO	2017-10-04 23:10:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:10:31	MarkDuplicates	Read    82,000,000 records.  Elapsed time: 00:13:12s.  Time for last 1,000,000:    9s.  Last read position: chr14:71,036,650
INFO	2017-10-04 23:10:31	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:10:39	MarkDuplicates	Read    83,000,000 records.  Elapsed time: 00:13:21s.  Time for last 1,000,000:    8s.  Last read position: chr14:95,934,966
INFO	2017-10-04 23:10:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:10:53	MarkDuplicates	Read    84,000,000 records.  Elapsed time: 00:13:34s.  Time for last 1,000,000:   13s.  Last read position: chr15:36,098,203
INFO	2017-10-04 23:10:53	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:11:02	MarkDuplicates	Read    85,000,000 records.  Elapsed time: 00:13:44s.  Time for last 1,000,000:    9s.  Last read position: chr15:62,896,765
INFO	2017-10-04 23:11:02	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 23:11:09	MarkDuplicates	Read    86,000,000 records.  Elapsed time: 00:13:51s.  Time for last 1,000,000:    7s.  Last read position: chr15:85,897,970
INFO	2017-10-04 23:11:09	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:11:21	MarkDuplicates	Read    87,000,000 records.  Elapsed time: 00:14:02s.  Time for last 1,000,000:   11s.  Last read position: chr16:4,254,101
INFO	2017-10-04 23:11:21	MarkDuplicates	Tracking 36 as yet unmatched pairs. 36 records in RAM.
INFO	2017-10-04 23:11:30	MarkDuplicates	Read    88,000,000 records.  Elapsed time: 00:14:12s.  Time for last 1,000,000:    9s.  Last read position: chr16:30,418,314
INFO	2017-10-04 23:11:30	MarkDuplicates	Tracking 24 as yet unmatched pairs. 24 records in RAM.
INFO	2017-10-04 23:11:38	MarkDuplicates	Read    89,000,000 records.  Elapsed time: 00:14:20s.  Time for last 1,000,000:    7s.  Last read position: chr16:67,530,372
INFO	2017-10-04 23:11:38	MarkDuplicates	Tracking 66 as yet unmatched pairs. 66 records in RAM.
INFO	2017-10-04 23:11:52	MarkDuplicates	Read    90,000,000 records.  Elapsed time: 00:14:33s.  Time for last 1,000,000:   13s.  Last read position: chr16:88,658,993
INFO	2017-10-04 23:11:52	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:11:59	MarkDuplicates	Read    91,000,000 records.  Elapsed time: 00:14:41s.  Time for last 1,000,000:    7s.  Last read position: chr17:17,042,104
INFO	2017-10-04 23:11:59	MarkDuplicates	Tracking 44 as yet unmatched pairs. 44 records in RAM.
INFO	2017-10-04 23:12:08	MarkDuplicates	Read    92,000,000 records.  Elapsed time: 00:14:50s.  Time for last 1,000,000:    8s.  Last read position: chr17:42,419,809
INFO	2017-10-04 23:12:08	MarkDuplicates	Tracking 8 as yet unmatched pairs. 8 records in RAM.
INFO	2017-10-04 23:12:18	MarkDuplicates	Read    93,000,000 records.  Elapsed time: 00:14:59s.  Time for last 1,000,000:    9s.  Last read position: chr17:63,829,371
INFO	2017-10-04 23:12:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:12:30	MarkDuplicates	Read    94,000,000 records.  Elapsed time: 00:15:11s.  Time for last 1,000,000:   12s.  Last read position: chr17:81,845,195
INFO	2017-10-04 23:12:30	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:12:42	MarkDuplicates	Read    95,000,000 records.  Elapsed time: 00:15:24s.  Time for last 1,000,000:   12s.  Last read position: chr18:28,964,175
INFO	2017-10-04 23:12:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:12:51	MarkDuplicates	Read    96,000,000 records.  Elapsed time: 00:15:33s.  Time for last 1,000,000:    9s.  Last read position: chr18:57,575,162
INFO	2017-10-04 23:12:51	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:13:05	MarkDuplicates	Read    97,000,000 records.  Elapsed time: 00:15:46s.  Time for last 1,000,000:   13s.  Last read position: chr19:1,592,460
INFO	2017-10-04 23:13:05	MarkDuplicates	Tracking 104 as yet unmatched pairs. 104 records in RAM.
INFO	2017-10-04 23:13:14	MarkDuplicates	Read    98,000,000 records.  Elapsed time: 00:15:55s.  Time for last 1,000,000:    8s.  Last read position: chr19:14,411,103
INFO	2017-10-04 23:13:14	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:13:24	MarkDuplicates	Read    99,000,000 records.  Elapsed time: 00:16:05s.  Time for last 1,000,000:   10s.  Last read position: chr19:38,850,105
INFO	2017-10-04 23:13:24	MarkDuplicates	Tracking 180 as yet unmatched pairs. 180 records in RAM.
INFO	2017-10-04 23:13:33	MarkDuplicates	Read   100,000,000 records.  Elapsed time: 00:16:14s.  Time for last 1,000,000:    9s.  Last read position: chr19:53,537,639
INFO	2017-10-04 23:13:33	MarkDuplicates	Tracking 28 as yet unmatched pairs. 28 records in RAM.
INFO	2017-10-04 23:13:45	MarkDuplicates	Read   101,000,000 records.  Elapsed time: 00:16:26s.  Time for last 1,000,000:   12s.  Last read position: chr20:17,968,936
INFO	2017-10-04 23:13:45	MarkDuplicates	Tracking 102 as yet unmatched pairs. 102 records in RAM.
INFO	2017-10-04 23:13:54	MarkDuplicates	Read   102,000,000 records.  Elapsed time: 00:16:36s.  Time for last 1,000,000:    9s.  Last read position: chr20:44,966,452
INFO	2017-10-04 23:13:54	MarkDuplicates	Tracking 26 as yet unmatched pairs. 26 records in RAM.
INFO	2017-10-04 23:14:04	MarkDuplicates	Read   103,000,000 records.  Elapsed time: 00:16:46s.  Time for last 1,000,000:    9s.  Last read position: chr21:14,773,500
INFO	2017-10-04 23:14:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:14:16	MarkDuplicates	Read   104,000,000 records.  Elapsed time: 00:16:58s.  Time for last 1,000,000:   12s.  Last read position: chr21:42,461,393
INFO	2017-10-04 23:14:16	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-04 23:14:25	MarkDuplicates	Read   105,000,000 records.  Elapsed time: 00:17:06s.  Time for last 1,000,000:    8s.  Last read position: chr22:32,914,112
INFO	2017-10-04 23:14:25	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:14:33	MarkDuplicates	Read   106,000,000 records.  Elapsed time: 00:17:15s.  Time for last 1,000,000:    8s.  Last read position: chr22:50,188,177
INFO	2017-10-04 23:14:33	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:14:41	MarkDuplicates	Read   107,000,000 records.  Elapsed time: 00:17:23s.  Time for last 1,000,000:    7s.  Last read position: chrX:30,328,707
INFO	2017-10-04 23:14:41	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:14:52	MarkDuplicates	Read   108,000,000 records.  Elapsed time: 00:17:34s.  Time for last 1,000,000:   10s.  Last read position: chrX:69,065,217
INFO	2017-10-04 23:14:52	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-04 23:15:00	MarkDuplicates	Read   109,000,000 records.  Elapsed time: 00:17:41s.  Time for last 1,000,000:    7s.  Last read position: chrX:109,403,861
INFO	2017-10-04 23:15:00	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-04 23:15:10	MarkDuplicates	Read   110,000,000 records.  Elapsed time: 00:17:52s.  Time for last 1,000,000:   10s.  Last read position: chrX:143,921,666
INFO	2017-10-04 23:15:10	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-04 23:15:14	MarkDuplicates	Read 110529030 records. 0 pairs never matched.
INFO	2017-10-04 23:15:20	MarkDuplicates	After buildSortedReadEndLists freeMemory: 1037618544; totalMemory: 1047527424; maxMemory: 1047527424
INFO	2017-10-04 23:15:20	MarkDuplicates	Will retain up to 32735232 duplicate indices before spilling to disk.
INFO	2017-10-04 23:15:20	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-04 23:15:43	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-04 23:16:24	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-04 23:16:24	MarkDuplicates	After generateDuplicateIndexes freeMemory: 797807480; totalMemory: 1069547520; maxMemory: 1069547520
INFO	2017-10-04 23:16:24	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-04 23:16:24	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-04 23:16:24	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-04 23:18:17	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:01:53s.  Time for last 10,000,000:  113s.  Last read position: chr2:12,734,012
INFO	2017-10-04 23:20:16	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:03:52s.  Time for last 10,000,000:  118s.  Last read position: chr3:40,783,058
INFO	2017-10-04 23:22:15	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:05:50s.  Time for last 10,000,000:  118s.  Last read position: chr4:122,040,534
INFO	2017-10-04 23:24:14	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:07:49s.  Time for last 10,000,000:  118s.  Last read position: chr6:31,781,032
INFO	2017-10-04 23:26:12	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:09:48s.  Time for last 10,000,000:  118s.  Last read position: chr7:134,513,353
INFO	2017-10-04 23:28:11	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:11:47s.  Time for last 10,000,000:  118s.  Last read position: chr9:125,189,895
INFO	2017-10-04 23:30:09	MarkDuplicates	Written    70,000,000 records.  Elapsed time: 00:13:45s.  Time for last 10,000,000:  118s.  Last read position: chr11:96,045,116
INFO	2017-10-04 23:32:08	MarkDuplicates	Written    80,000,000 records.  Elapsed time: 00:15:43s.  Time for last 10,000,000:  118s.  Last read position: chr13:113,490,115
INFO	2017-10-04 23:34:06	MarkDuplicates	Written    90,000,000 records.  Elapsed time: 00:17:41s.  Time for last 10,000,000:  118s.  Last read position: chr16:88,658,993
INFO	2017-10-04 23:36:04	MarkDuplicates	Written   100,000,000 records.  Elapsed time: 00:19:39s.  Time for last 10,000,000:  117s.  Last read position: chr19:53,537,639
INFO	2017-10-04 23:38:02	MarkDuplicates	Written   110,000,000 records.  Elapsed time: 00:21:38s.  Time for last 10,000,000:  118s.  Last read position: chrX:143,921,666
INFO	2017-10-04 23:38:09	MarkDuplicates	Before output close freeMemory: 1062298112; totalMemory: 1072693248; maxMemory: 1072693248
INFO	2017-10-04 23:38:09	MarkDuplicates	After output close freeMemory: 1062284576; totalMemory: 1072693248; maxMemory: 1072693248
[Wed Oct 04 23:38:09 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 40.85 minutes.
Runtime.totalMemory()=1072693248
</pre>
Process 9411 returned: (0). Elapsed: 0:41:35.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`

<pre>
</pre>
Process 10586 returned: (0). Elapsed: 0:04:38. Peak memory: (Process: 0.02GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 10709 returned: (0). Elapsed: 0:16:34. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n stomach_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Thu, 05 Oct 2017 00:00:05: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n stomach_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = stomach_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Thu, 05 Oct 2017 00:00:05: #1 read tag files... 
INFO  @ Thu, 05 Oct 2017 00:00:05: #1 read treatment tags... 
INFO  @ Thu, 05 Oct 2017 00:00:07:  1000000 
INFO  @ Thu, 05 Oct 2017 00:00:09:  2000000 
INFO  @ Thu, 05 Oct 2017 00:00:12:  3000000 
INFO  @ Thu, 05 Oct 2017 00:00:14:  4000000 
INFO  @ Thu, 05 Oct 2017 00:00:17:  5000000 
INFO  @ Thu, 05 Oct 2017 00:00:19:  6000000 
INFO  @ Thu, 05 Oct 2017 00:00:22:  7000000 
INFO  @ Thu, 05 Oct 2017 00:00:24:  8000000 
INFO  @ Thu, 05 Oct 2017 00:00:27:  9000000 
INFO  @ Thu, 05 Oct 2017 00:00:29:  10000000 
INFO  @ Thu, 05 Oct 2017 00:00:31:  11000000 
INFO  @ Thu, 05 Oct 2017 00:00:34:  12000000 
INFO  @ Thu, 05 Oct 2017 00:00:36:  13000000 
INFO  @ Thu, 05 Oct 2017 00:00:38:  14000000 
INFO  @ Thu, 05 Oct 2017 00:00:41:  15000000 
INFO  @ Thu, 05 Oct 2017 00:00:43:  16000000 
INFO  @ Thu, 05 Oct 2017 00:00:45:  17000000 
INFO  @ Thu, 05 Oct 2017 00:00:47:  18000000 
INFO  @ Thu, 05 Oct 2017 00:00:50:  19000000 
INFO  @ Thu, 05 Oct 2017 00:00:52:  20000000 
INFO  @ Thu, 05 Oct 2017 00:00:54:  21000000 
INFO  @ Thu, 05 Oct 2017 00:00:56:  22000000 
INFO  @ Thu, 05 Oct 2017 00:00:59:  23000000 
INFO  @ Thu, 05 Oct 2017 00:01:01:  24000000 
INFO  @ Thu, 05 Oct 2017 00:01:03:  25000000 
INFO  @ Thu, 05 Oct 2017 00:01:06:  26000000 
INFO  @ Thu, 05 Oct 2017 00:01:08:  27000000 
INFO  @ Thu, 05 Oct 2017 00:01:11:  28000000 
INFO  @ Thu, 05 Oct 2017 00:01:13:  29000000 
INFO  @ Thu, 05 Oct 2017 00:01:15:  30000000 
INFO  @ Thu, 05 Oct 2017 00:01:18:  31000000 
INFO  @ Thu, 05 Oct 2017 00:01:20:  32000000 
INFO  @ Thu, 05 Oct 2017 00:01:23:  33000000 
INFO  @ Thu, 05 Oct 2017 00:01:25:  34000000 
INFO  @ Thu, 05 Oct 2017 00:01:27:  35000000 
INFO  @ Thu, 05 Oct 2017 00:01:30:  36000000 
INFO  @ Thu, 05 Oct 2017 00:01:32:  37000000 
INFO  @ Thu, 05 Oct 2017 00:01:35:  38000000 
INFO  @ Thu, 05 Oct 2017 00:01:37:  39000000 
INFO  @ Thu, 05 Oct 2017 00:01:40:  40000000 
INFO  @ Thu, 05 Oct 2017 00:01:42:  41000000 
INFO  @ Thu, 05 Oct 2017 00:01:44:  42000000 
INFO  @ Thu, 05 Oct 2017 00:01:47:  43000000 
INFO  @ Thu, 05 Oct 2017 00:01:49:  44000000 
INFO  @ Thu, 05 Oct 2017 00:01:52:  45000000 
INFO  @ Thu, 05 Oct 2017 00:01:54:  46000000 
INFO  @ Thu, 05 Oct 2017 00:01:56:  47000000 
INFO  @ Thu, 05 Oct 2017 00:01:59:  48000000 
INFO  @ Thu, 05 Oct 2017 00:02:01:  49000000 
INFO  @ Thu, 05 Oct 2017 00:02:04:  50000000 
INFO  @ Thu, 05 Oct 2017 00:02:06:  51000000 
INFO  @ Thu, 05 Oct 2017 00:02:08:  52000000 
INFO  @ Thu, 05 Oct 2017 00:02:10:  53000000 
INFO  @ Thu, 05 Oct 2017 00:02:13:  54000000 
INFO  @ Thu, 05 Oct 2017 00:02:15:  55000000 
INFO  @ Thu, 05 Oct 2017 00:02:17:  56000000 
INFO  @ Thu, 05 Oct 2017 00:02:19:  57000000 
INFO  @ Thu, 05 Oct 2017 00:02:22:  58000000 
INFO  @ Thu, 05 Oct 2017 00:02:24:  59000000 
INFO  @ Thu, 05 Oct 2017 00:02:26:  60000000 
INFO  @ Thu, 05 Oct 2017 00:02:28:  61000000 
INFO  @ Thu, 05 Oct 2017 00:02:31:  62000000 
INFO  @ Thu, 05 Oct 2017 00:02:33:  63000000 
INFO  @ Thu, 05 Oct 2017 00:02:35:  64000000 
INFO  @ Thu, 05 Oct 2017 00:02:38:  65000000 
INFO  @ Thu, 05 Oct 2017 00:02:40:  66000000 
INFO  @ Thu, 05 Oct 2017 00:02:42:  67000000 
INFO  @ Thu, 05 Oct 2017 00:02:44:  68000000 
INFO  @ Thu, 05 Oct 2017 00:02:47:  69000000 
INFO  @ Thu, 05 Oct 2017 00:02:49:  70000000 
INFO  @ Thu, 05 Oct 2017 00:02:51:  71000000 
INFO  @ Thu, 05 Oct 2017 00:02:53:  72000000 
INFO  @ Thu, 05 Oct 2017 00:02:56:  73000000 
INFO  @ Thu, 05 Oct 2017 00:02:58:  74000000 
INFO  @ Thu, 05 Oct 2017 00:03:00:  75000000 
INFO  @ Thu, 05 Oct 2017 00:03:03:  76000000 
INFO  @ Thu, 05 Oct 2017 00:03:05:  77000000 
INFO  @ Thu, 05 Oct 2017 00:03:07:  78000000 
INFO  @ Thu, 05 Oct 2017 00:03:09:  79000000 
INFO  @ Thu, 05 Oct 2017 00:03:12:  80000000 
INFO  @ Thu, 05 Oct 2017 00:03:14:  81000000 
INFO  @ Thu, 05 Oct 2017 00:03:16:  82000000 
INFO  @ Thu, 05 Oct 2017 00:03:18:  83000000 
INFO  @ Thu, 05 Oct 2017 00:03:21:  84000000 
INFO  @ Thu, 05 Oct 2017 00:03:23:  85000000 
INFO  @ Thu, 05 Oct 2017 00:03:25:  86000000 
INFO  @ Thu, 05 Oct 2017 00:03:27:  87000000 
INFO  @ Thu, 05 Oct 2017 00:03:30:  88000000 
INFO  @ Thu, 05 Oct 2017 00:03:32:  89000000 
INFO  @ Thu, 05 Oct 2017 00:03:34:  90000000 
INFO  @ Thu, 05 Oct 2017 00:03:36:  91000000 
INFO  @ Thu, 05 Oct 2017 00:03:39:  92000000 
INFO  @ Thu, 05 Oct 2017 00:03:41:  93000000 
INFO  @ Thu, 05 Oct 2017 00:03:43:  94000000 
INFO  @ Thu, 05 Oct 2017 00:03:46:  95000000 
INFO  @ Thu, 05 Oct 2017 00:03:48:  96000000 
INFO  @ Thu, 05 Oct 2017 00:03:50:  97000000 
INFO  @ Thu, 05 Oct 2017 00:03:52:  98000000 
INFO  @ Thu, 05 Oct 2017 00:03:55:  99000000 
INFO  @ Thu, 05 Oct 2017 00:03:57:  100000000 
INFO  @ Thu, 05 Oct 2017 00:03:59:  101000000 
INFO  @ Thu, 05 Oct 2017 00:04:01:  102000000 
INFO  @ Thu, 05 Oct 2017 00:04:04:  103000000 
INFO  @ Thu, 05 Oct 2017 00:04:06:  104000000 
INFO  @ Thu, 05 Oct 2017 00:04:08:  105000000 
INFO  @ Thu, 05 Oct 2017 00:04:11:  106000000 
INFO  @ Thu, 05 Oct 2017 00:04:13:  107000000 
INFO  @ Thu, 05 Oct 2017 00:04:15:  108000000 
INFO  @ Thu, 05 Oct 2017 00:04:17:  109000000 
INFO  @ Thu, 05 Oct 2017 00:04:20:  110000000 
INFO  @ Thu, 05 Oct 2017 00:04:24: #1 tag size is determined as 50 bps 
INFO  @ Thu, 05 Oct 2017 00:04:24: #1 tag size = 50 
INFO  @ Thu, 05 Oct 2017 00:04:24: #1  total tags in treatment: 110529030 
INFO  @ Thu, 05 Oct 2017 00:04:24: #1 user defined the maximum tags... 
INFO  @ Thu, 05 Oct 2017 00:04:24: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Thu, 05 Oct 2017 00:04:29: #1  tags after filtering in treatment: 93962031 
INFO  @ Thu, 05 Oct 2017 00:04:29: #1  Redundant rate of treatment: 0.15 
INFO  @ Thu, 05 Oct 2017 00:04:29: #1 finished! 
INFO  @ Thu, 05 Oct 2017 00:04:29: #2 Build Peak Model... 
INFO  @ Thu, 05 Oct 2017 00:04:29: #2 Skipped... 
INFO  @ Thu, 05 Oct 2017 00:04:29: #2 Use 200 as fragment length 
INFO  @ Thu, 05 Oct 2017 00:04:29: #3 Call peaks... 
INFO  @ Thu, 05 Oct 2017 00:04:29: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Thu, 05 Oct 2017 00:09:24: #3 Call peaks for each chromosome... 
INFO  @ Thu, 05 Oct 2017 00:12:35: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.xls 
INFO  @ Thu, 05 Oct 2017 00:12:36: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak 
INFO  @ Thu, 05 Oct 2017 00:12:37: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_summits.bed 
INFO  @ Thu, 05 Oct 2017 00:12:38: Done! 
</pre>
Process 11174 returned: (0). Elapsed: 0:12:34. Peak memory: (Process: 1.17GB; Pipeline: 1.421GB)

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`
> `picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort_picard_metrics_log.txt`

<pre>
ERROR StatusLogger No log4j2 configuration file found. Using default configuration: logging only errors to the console.
[Thu Oct 05 00:12:39 PDT 2017] picard.sam.markduplicates.MarkDuplicates INPUT=[/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam] OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort_picard_metrics_bam.txt REMOVE_DUPLICATES=true ASSUME_SORTED=true VALIDATION_STRINGENCY=LENIENT    MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP=50000 MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=8000 SORTING_COLLECTION_SIZE_RATIO=0.25 TAG_DUPLICATE_SET_MEMBERS=false REMOVE_SEQUENCING_DUPLICATES=false TAGGING_POLICY=DontTag DUPLICATE_SCORING_STRATEGY=SUM_OF_BASE_QUALITIES PROGRAM_RECORD_ID=MarkDuplicates PROGRAM_GROUP_NAME=MarkDuplicates READ_NAME_REGEX=<optimized capture of last three ':' separated fields as numeric values> OPTICAL_DUPLICATE_PIXEL_DISTANCE=100 VERBOSITY=INFO QUIET=false COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Thu Oct 05 00:12:39 PDT 2017] Executing as kdriest@changrila2.stanford.edu on Linux 3.10.0-327.22.2.el7.x86_64 amd64; Java HotSpot(TM) 64-Bit Server VM 1.8.0_45-b14; Deflater: Intel; Inflater: Intel; Picard version: 2.10.6-SNAPSHOT
INFO	2017-10-05 00:12:39	MarkDuplicates	Start of doWork freeMemory: 503974512; totalMemory: 514850816; maxMemory: 954728448
INFO	2017-10-05 00:12:39	MarkDuplicates	Reading input file and constructing read end information.
INFO	2017-10-05 00:12:39	MarkDuplicates	Will retain up to 3459161 data points before spilling to disk.
INFO	2017-10-05 00:12:50	MarkDuplicates	Read     1,000,000 records.  Elapsed time: 00:00:10s.  Time for last 1,000,000:   10s.  Last read position: chr1:33,432,800
INFO	2017-10-05 00:12:50	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:12:59	MarkDuplicates	Read     2,000,000 records.  Elapsed time: 00:00:19s.  Time for last 1,000,000:    8s.  Last read position: chr1:72,657,657
INFO	2017-10-05 00:12:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:13:08	MarkDuplicates	Read     3,000,000 records.  Elapsed time: 00:00:28s.  Time for last 1,000,000:    9s.  Last read position: chr1:114,191,399
INFO	2017-10-05 00:13:08	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-05 00:13:18	MarkDuplicates	Read     4,000,000 records.  Elapsed time: 00:00:38s.  Time for last 1,000,000:    9s.  Last read position: chr1:180,166,155
INFO	2017-10-05 00:13:18	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:13:28	MarkDuplicates	Read     5,000,000 records.  Elapsed time: 00:00:49s.  Time for last 1,000,000:   10s.  Last read position: chr1:221,468,609
INFO	2017-10-05 00:13:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:13:35	MarkDuplicates	Read     6,000,000 records.  Elapsed time: 00:00:56s.  Time for last 1,000,000:    7s.  Last read position: chr2:11,815,465
INFO	2017-10-05 00:13:35	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:13:49	MarkDuplicates	Read     7,000,000 records.  Elapsed time: 00:01:10s.  Time for last 1,000,000:   13s.  Last read position: chr2:52,319,037
INFO	2017-10-05 00:13:49	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-05 00:13:57	MarkDuplicates	Read     8,000,000 records.  Elapsed time: 00:01:17s.  Time for last 1,000,000:    7s.  Last read position: chr2:98,912,639
INFO	2017-10-05 00:13:57	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-05 00:14:05	MarkDuplicates	Read     9,000,000 records.  Elapsed time: 00:01:25s.  Time for last 1,000,000:    7s.  Last read position: chr2:138,981,188
INFO	2017-10-05 00:14:05	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:14:13	MarkDuplicates	Read    10,000,000 records.  Elapsed time: 00:01:33s.  Time for last 1,000,000:    8s.  Last read position: chr2:182,779,496
INFO	2017-10-05 00:14:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:14:24	MarkDuplicates	Read    11,000,000 records.  Elapsed time: 00:01:44s.  Time for last 1,000,000:   10s.  Last read position: chr2:225,458,349
INFO	2017-10-05 00:14:24	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-05 00:14:33	MarkDuplicates	Read    12,000,000 records.  Elapsed time: 00:01:53s.  Time for last 1,000,000:    8s.  Last read position: chr3:19,063,311
INFO	2017-10-05 00:14:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:14:40	MarkDuplicates	Read    13,000,000 records.  Elapsed time: 00:02:00s.  Time for last 1,000,000:    7s.  Last read position: chr3:56,433,608
INFO	2017-10-05 00:14:40	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:14:53	MarkDuplicates	Read    14,000,000 records.  Elapsed time: 00:02:14s.  Time for last 1,000,000:   13s.  Last read position: chr3:100,346,532
INFO	2017-10-05 00:14:53	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:15:02	MarkDuplicates	Read    15,000,000 records.  Elapsed time: 00:02:22s.  Time for last 1,000,000:    8s.  Last read position: chr3:138,126,771
INFO	2017-10-05 00:15:02	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:15:08	MarkDuplicates	Read    16,000,000 records.  Elapsed time: 00:02:29s.  Time for last 1,000,000:    6s.  Last read position: chr3:180,160,813
INFO	2017-10-05 00:15:08	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:15:18	MarkDuplicates	Read    17,000,000 records.  Elapsed time: 00:02:39s.  Time for last 1,000,000:    9s.  Last read position: chr4:17,294,418
INFO	2017-10-05 00:15:18	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:15:28	MarkDuplicates	Read    18,000,000 records.  Elapsed time: 00:02:48s.  Time for last 1,000,000:    9s.  Last read position: chr4:59,368,686
INFO	2017-10-05 00:15:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:15:37	MarkDuplicates	Read    19,000,000 records.  Elapsed time: 00:02:57s.  Time for last 1,000,000:    8s.  Last read position: chr4:101,017,436
INFO	2017-10-05 00:15:37	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:15:46	MarkDuplicates	Read    20,000,000 records.  Elapsed time: 00:03:06s.  Time for last 1,000,000:    9s.  Last read position: chr4:144,031,474
INFO	2017-10-05 00:15:46	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:15:59	MarkDuplicates	Read    21,000,000 records.  Elapsed time: 00:03:19s.  Time for last 1,000,000:   12s.  Last read position: chr4:185,204,011
INFO	2017-10-05 00:15:59	MarkDuplicates	Tracking 32 as yet unmatched pairs. 32 records in RAM.
INFO	2017-10-05 00:16:06	MarkDuplicates	Read    22,000,000 records.  Elapsed time: 00:03:26s.  Time for last 1,000,000:    7s.  Last read position: chr5:35,920,061
INFO	2017-10-05 00:16:06	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:16:13	MarkDuplicates	Read    23,000,000 records.  Elapsed time: 00:03:33s.  Time for last 1,000,000:    7s.  Last read position: chr5:82,412,925
INFO	2017-10-05 00:16:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:16:23	MarkDuplicates	Read    24,000,000 records.  Elapsed time: 00:03:43s.  Time for last 1,000,000:    9s.  Last read position: chr5:123,593,520
INFO	2017-10-05 00:16:23	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:16:33	MarkDuplicates	Read    25,000,000 records.  Elapsed time: 00:03:53s.  Time for last 1,000,000:   10s.  Last read position: chr5:159,207,484
INFO	2017-10-05 00:16:33	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:16:42	MarkDuplicates	Read    26,000,000 records.  Elapsed time: 00:04:02s.  Time for last 1,000,000:    9s.  Last read position: chr6:15,712,321
INFO	2017-10-05 00:16:42	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:16:51	MarkDuplicates	Read    27,000,000 records.  Elapsed time: 00:04:11s.  Time for last 1,000,000:    8s.  Last read position: chr6:54,059,866
INFO	2017-10-05 00:16:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:17:04	MarkDuplicates	Read    28,000,000 records.  Elapsed time: 00:04:24s.  Time for last 1,000,000:   13s.  Last read position: chr6:97,921,803
INFO	2017-10-05 00:17:04	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:17:13	MarkDuplicates	Read    29,000,000 records.  Elapsed time: 00:04:33s.  Time for last 1,000,000:    8s.  Last read position: chr6:138,388,134
INFO	2017-10-05 00:17:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:17:21	MarkDuplicates	Read    30,000,000 records.  Elapsed time: 00:04:41s.  Time for last 1,000,000:    7s.  Last read position: chr7:4,908,973
INFO	2017-10-05 00:17:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:17:28	MarkDuplicates	Read    31,000,000 records.  Elapsed time: 00:04:48s.  Time for last 1,000,000:    6s.  Last read position: chr7:46,554,718
INFO	2017-10-05 00:17:28	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-05 00:17:39	MarkDuplicates	Read    32,000,000 records.  Elapsed time: 00:04:59s.  Time for last 1,000,000:   10s.  Last read position: chr7:96,287,516
INFO	2017-10-05 00:17:39	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:17:48	MarkDuplicates	Read    33,000,000 records.  Elapsed time: 00:05:09s.  Time for last 1,000,000:    9s.  Last read position: chr7:138,149,000
INFO	2017-10-05 00:17:48	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:17:57	MarkDuplicates	Read    34,000,000 records.  Elapsed time: 00:05:17s.  Time for last 1,000,000:    8s.  Last read position: chr8:18,874,200
INFO	2017-10-05 00:17:57	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:18:13	MarkDuplicates	Read    35,000,000 records.  Elapsed time: 00:05:33s.  Time for last 1,000,000:   15s.  Last read position: chr8:58,699,322
INFO	2017-10-05 00:18:13	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:18:21	MarkDuplicates	Read    36,000,000 records.  Elapsed time: 00:05:41s.  Time for last 1,000,000:    8s.  Last read position: chr8:98,370,509
INFO	2017-10-05 00:18:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:18:30	MarkDuplicates	Read    37,000,000 records.  Elapsed time: 00:05:50s.  Time for last 1,000,000:    9s.  Last read position: chr8:137,018,820
INFO	2017-10-05 00:18:30	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:18:38	MarkDuplicates	Read    38,000,000 records.  Elapsed time: 00:05:59s.  Time for last 1,000,000:    8s.  Last read position: chr9:29,641,346
INFO	2017-10-05 00:18:38	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:18:49	MarkDuplicates	Read    39,000,000 records.  Elapsed time: 00:06:09s.  Time for last 1,000,000:   10s.  Last read position: chr9:97,785,465
INFO	2017-10-05 00:18:49	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:18:58	MarkDuplicates	Read    40,000,000 records.  Elapsed time: 00:06:18s.  Time for last 1,000,000:    8s.  Last read position: chr9:135,230,292
INFO	2017-10-05 00:18:58	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:19:05	MarkDuplicates	Read    41,000,000 records.  Elapsed time: 00:06:25s.  Time for last 1,000,000:    6s.  Last read position: chr10:36,469,094
INFO	2017-10-05 00:19:05	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:19:17	MarkDuplicates	Read    42,000,000 records.  Elapsed time: 00:06:37s.  Time for last 1,000,000:   12s.  Last read position: chr10:79,518,235
INFO	2017-10-05 00:19:17	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:19:24	MarkDuplicates	Read    43,000,000 records.  Elapsed time: 00:06:44s.  Time for last 1,000,000:    6s.  Last read position: chr10:118,732,397
INFO	2017-10-05 00:19:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:19:32	MarkDuplicates	Read    44,000,000 records.  Elapsed time: 00:06:53s.  Time for last 1,000,000:    8s.  Last read position: chr11:18,586,172
INFO	2017-10-05 00:19:32	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:19:44	MarkDuplicates	Read    45,000,000 records.  Elapsed time: 00:07:04s.  Time for last 1,000,000:   11s.  Last read position: chr11:61,441,392
INFO	2017-10-05 00:19:44	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:19:50	MarkDuplicates	Read    46,000,000 records.  Elapsed time: 00:07:11s.  Time for last 1,000,000:    6s.  Last read position: chr11:96,499,640
INFO	2017-10-05 00:19:50	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:19:59	MarkDuplicates	Read    47,000,000 records.  Elapsed time: 00:07:19s.  Time for last 1,000,000:    8s.  Last read position: chr11:133,758,108
INFO	2017-10-05 00:19:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:20:09	MarkDuplicates	Read    48,000,000 records.  Elapsed time: 00:07:29s.  Time for last 1,000,000:   10s.  Last read position: chr12:40,819,861
INFO	2017-10-05 00:20:09	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:20:22	MarkDuplicates	Read    49,000,000 records.  Elapsed time: 00:07:42s.  Time for last 1,000,000:   12s.  Last read position: chr12:79,515,069
INFO	2017-10-05 00:20:22	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:20:31	MarkDuplicates	Read    50,000,000 records.  Elapsed time: 00:07:51s.  Time for last 1,000,000:    9s.  Last read position: chr12:119,356,253
INFO	2017-10-05 00:20:31	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:20:40	MarkDuplicates	Read    51,000,000 records.  Elapsed time: 00:08:00s.  Time for last 1,000,000:    8s.  Last read position: chr13:43,871,063
INFO	2017-10-05 00:20:40	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:20:49	MarkDuplicates	Read    52,000,000 records.  Elapsed time: 00:08:09s.  Time for last 1,000,000:    9s.  Last read position: chr13:89,663,810
INFO	2017-10-05 00:20:49	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:20:57	MarkDuplicates	Read    53,000,000 records.  Elapsed time: 00:08:17s.  Time for last 1,000,000:    7s.  Last read position: chr14:33,245,285
INFO	2017-10-05 00:20:57	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:21:04	MarkDuplicates	Read    54,000,000 records.  Elapsed time: 00:08:24s.  Time for last 1,000,000:    7s.  Last read position: chr14:73,353,890
INFO	2017-10-05 00:21:04	MarkDuplicates	Tracking 0 as yet unmatched pairs. 0 records in RAM.
INFO	2017-10-05 00:21:12	MarkDuplicates	Read    55,000,000 records.  Elapsed time: 00:08:32s.  Time for last 1,000,000:    7s.  Last read position: chr15:25,735,860
INFO	2017-10-05 00:21:12	MarkDuplicates	Tracking 4 as yet unmatched pairs. 4 records in RAM.
INFO	2017-10-05 00:21:24	MarkDuplicates	Read    56,000,000 records.  Elapsed time: 00:08:44s.  Time for last 1,000,000:   12s.  Last read position: chr15:69,395,029
INFO	2017-10-05 00:21:24	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:21:33	MarkDuplicates	Read    57,000,000 records.  Elapsed time: 00:08:53s.  Time for last 1,000,000:    8s.  Last read position: chr16:5,616,380
INFO	2017-10-05 00:21:33	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-05 00:21:41	MarkDuplicates	Read    58,000,000 records.  Elapsed time: 00:09:01s.  Time for last 1,000,000:    8s.  Last read position: chr16:60,343,170
INFO	2017-10-05 00:21:41	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:21:51	MarkDuplicates	Read    59,000,000 records.  Elapsed time: 00:09:11s.  Time for last 1,000,000:    9s.  Last read position: chr17:7,043,265
INFO	2017-10-05 00:21:51	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:21:59	MarkDuplicates	Read    60,000,000 records.  Elapsed time: 00:09:19s.  Time for last 1,000,000:    8s.  Last read position: chr17:50,890,256
INFO	2017-10-05 00:21:59	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:22:07	MarkDuplicates	Read    61,000,000 records.  Elapsed time: 00:09:27s.  Time for last 1,000,000:    7s.  Last read position: chr18:6,634,285
INFO	2017-10-05 00:22:07	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:22:14	MarkDuplicates	Read    62,000,000 records.  Elapsed time: 00:09:34s.  Time for last 1,000,000:    7s.  Last read position: chr18:50,653,773
INFO	2017-10-05 00:22:14	MarkDuplicates	Tracking 6 as yet unmatched pairs. 6 records in RAM.
INFO	2017-10-05 00:22:28	MarkDuplicates	Read    63,000,000 records.  Elapsed time: 00:09:49s.  Time for last 1,000,000:   14s.  Last read position: chr19:7,181,292
INFO	2017-10-05 00:22:28	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:22:36	MarkDuplicates	Read    64,000,000 records.  Elapsed time: 00:09:56s.  Time for last 1,000,000:    7s.  Last read position: chr19:46,295,940
INFO	2017-10-05 00:22:36	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:22:46	MarkDuplicates	Read    65,000,000 records.  Elapsed time: 00:10:06s.  Time for last 1,000,000:    9s.  Last read position: chr20:24,703,913
INFO	2017-10-05 00:22:46	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:22:56	MarkDuplicates	Read    66,000,000 records.  Elapsed time: 00:10:16s.  Time for last 1,000,000:   10s.  Last read position: chr21:9,787,297
INFO	2017-10-05 00:22:56	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:23:03	MarkDuplicates	Read    67,000,000 records.  Elapsed time: 00:10:23s.  Time for last 1,000,000:    7s.  Last read position: chr22:22,533,085
INFO	2017-10-05 00:23:03	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:23:13	MarkDuplicates	Read    68,000,000 records.  Elapsed time: 00:10:33s.  Time for last 1,000,000:    9s.  Last read position: chrX:11,463,758
INFO	2017-10-05 00:23:13	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:23:21	MarkDuplicates	Read    69,000,000 records.  Elapsed time: 00:10:41s.  Time for last 1,000,000:    8s.  Last read position: chrX:104,048,865
INFO	2017-10-05 00:23:21	MarkDuplicates	Tracking 2 as yet unmatched pairs. 2 records in RAM.
INFO	2017-10-05 00:23:33	MarkDuplicates	Read 69904536 records. 0 pairs never matched.
INFO	2017-10-05 00:23:33	MarkDuplicates	After buildSortedReadEndLists freeMemory: 971017744; totalMemory: 980942848; maxMemory: 980942848
INFO	2017-10-05 00:23:33	MarkDuplicates	Will retain up to 30654464 duplicate indices before spilling to disk.
INFO	2017-10-05 00:23:34	MarkDuplicates	Traversing read pair information and detecting duplicates.
INFO	2017-10-05 00:23:48	MarkDuplicates	Traversing fragment information and detecting duplicates.
INFO	2017-10-05 00:24:12	MarkDuplicates	Sorting list of duplicate records.
INFO	2017-10-05 00:24:12	MarkDuplicates	After generateDuplicateIndexes freeMemory: 747918216; totalMemory: 1002962944; maxMemory: 1002962944
INFO	2017-10-05 00:24:12	MarkDuplicates	Marking 0 records as duplicates.
INFO	2017-10-05 00:24:12	MarkDuplicates	Found 0 optical duplicate clusters.
INFO	2017-10-05 00:24:12	MarkDuplicates	Reads are assumed to be ordered by: coordinate
INFO	2017-10-05 00:26:10	MarkDuplicates	Written    10,000,000 records.  Elapsed time: 00:01:57s.  Time for last 10,000,000:  117s.  Last read position: chr2:182,779,496
INFO	2017-10-05 00:28:13	MarkDuplicates	Written    20,000,000 records.  Elapsed time: 00:04:00s.  Time for last 10,000,000:  122s.  Last read position: chr4:144,031,474
INFO	2017-10-05 00:30:15	MarkDuplicates	Written    30,000,000 records.  Elapsed time: 00:06:03s.  Time for last 10,000,000:  122s.  Last read position: chr7:4,908,973
INFO	2017-10-05 00:32:18	MarkDuplicates	Written    40,000,000 records.  Elapsed time: 00:08:06s.  Time for last 10,000,000:  122s.  Last read position: chr9:135,230,292
INFO	2017-10-05 00:34:21	MarkDuplicates	Written    50,000,000 records.  Elapsed time: 00:10:08s.  Time for last 10,000,000:  122s.  Last read position: chr12:119,356,253
INFO	2017-10-05 00:36:23	MarkDuplicates	Written    60,000,000 records.  Elapsed time: 00:12:10s.  Time for last 10,000,000:  122s.  Last read position: chr17:50,890,256
INFO	2017-10-05 00:38:26	MarkDuplicates	Before output close freeMemory: 999281256; totalMemory: 1009778688; maxMemory: 1009778688
INFO	2017-10-05 00:38:26	MarkDuplicates	After output close freeMemory: 999267712; totalMemory: 1009778688; maxMemory: 1009778688
[Thu Oct 05 00:38:26 PDT 2017] picard.sam.markduplicates.MarkDuplicates done. Elapsed time: 25.79 minutes.
Runtime.totalMemory()=1009778688
</pre>
Process 11592 returned: (0). Elapsed: 0:26:35.
> `samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`

<pre>
</pre>
Process 12119 returned: (0). Elapsed: 0:03:48. Peak memory: (Process: 0.021GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed`
> `/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`

<pre>

Creating bed file
</pre>
Process 12250 returned: (0). Elapsed: 0:10:34. Peak memory: (Process: 0.002GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`
> `macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n testis_1.sort  -q 0.01 --shift 0 --nomodel `

<pre>
INFO  @ Thu, 05 Oct 2017 00:53:34: 
# Command line: callpeak -t /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed -f BED -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n testis_1.sort -q 0.01 --shift 0 --nomodel
# ARGUMENTS LIST:
# name = testis_1.sort
# format = BED
# ChIP-seq file = ['/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed']
# control file = None
# effective genome size = 2.70e+09
# band width = 300
# model fold = [5, 50]
# qvalue cutoff = 1.00e-02
# Larger dataset will be scaled towards smaller dataset.
# Range for calculating regional lambda is: 10000 bps
# Broad region calling is off
 
INFO  @ Thu, 05 Oct 2017 00:53:34: #1 read tag files... 
INFO  @ Thu, 05 Oct 2017 00:53:34: #1 read treatment tags... 
INFO  @ Thu, 05 Oct 2017 00:53:37:  1000000 
INFO  @ Thu, 05 Oct 2017 00:53:40:  2000000 
INFO  @ Thu, 05 Oct 2017 00:53:42:  3000000 
INFO  @ Thu, 05 Oct 2017 00:53:45:  4000000 
INFO  @ Thu, 05 Oct 2017 00:53:48:  5000000 
INFO  @ Thu, 05 Oct 2017 00:53:50:  6000000 
INFO  @ Thu, 05 Oct 2017 00:53:53:  7000000 
INFO  @ Thu, 05 Oct 2017 00:53:55:  8000000 
INFO  @ Thu, 05 Oct 2017 00:53:58:  9000000 
INFO  @ Thu, 05 Oct 2017 00:54:01:  10000000 
INFO  @ Thu, 05 Oct 2017 00:54:04:  11000000 
INFO  @ Thu, 05 Oct 2017 00:54:06:  12000000 
INFO  @ Thu, 05 Oct 2017 00:54:09:  13000000 
INFO  @ Thu, 05 Oct 2017 00:54:12:  14000000 
INFO  @ Thu, 05 Oct 2017 00:54:15:  15000000 
INFO  @ Thu, 05 Oct 2017 00:54:18:  16000000 
INFO  @ Thu, 05 Oct 2017 00:54:20:  17000000 
INFO  @ Thu, 05 Oct 2017 00:54:23:  18000000 
INFO  @ Thu, 05 Oct 2017 00:54:25:  19000000 
INFO  @ Thu, 05 Oct 2017 00:54:28:  20000000 
INFO  @ Thu, 05 Oct 2017 00:54:31:  21000000 
INFO  @ Thu, 05 Oct 2017 00:54:34:  22000000 
INFO  @ Thu, 05 Oct 2017 00:54:37:  23000000 
INFO  @ Thu, 05 Oct 2017 00:54:39:  24000000 
INFO  @ Thu, 05 Oct 2017 00:54:42:  25000000 
INFO  @ Thu, 05 Oct 2017 00:54:44:  26000000 
INFO  @ Thu, 05 Oct 2017 00:54:47:  27000000 
INFO  @ Thu, 05 Oct 2017 00:54:49:  28000000 
INFO  @ Thu, 05 Oct 2017 00:54:52:  29000000 
INFO  @ Thu, 05 Oct 2017 00:54:54:  30000000 
INFO  @ Thu, 05 Oct 2017 00:54:57:  31000000 
INFO  @ Thu, 05 Oct 2017 00:54:59:  32000000 
INFO  @ Thu, 05 Oct 2017 00:55:01:  33000000 
INFO  @ Thu, 05 Oct 2017 00:55:04:  34000000 
INFO  @ Thu, 05 Oct 2017 00:55:06:  35000000 
INFO  @ Thu, 05 Oct 2017 00:55:09:  36000000 
INFO  @ Thu, 05 Oct 2017 00:55:11:  37000000 
INFO  @ Thu, 05 Oct 2017 00:55:14:  38000000 
INFO  @ Thu, 05 Oct 2017 00:55:16:  39000000 
INFO  @ Thu, 05 Oct 2017 00:55:18:  40000000 
INFO  @ Thu, 05 Oct 2017 00:55:21:  41000000 
INFO  @ Thu, 05 Oct 2017 00:55:23:  42000000 
INFO  @ Thu, 05 Oct 2017 00:55:26:  43000000 
INFO  @ Thu, 05 Oct 2017 00:55:28:  44000000 
INFO  @ Thu, 05 Oct 2017 00:55:31:  45000000 
INFO  @ Thu, 05 Oct 2017 00:55:33:  46000000 
INFO  @ Thu, 05 Oct 2017 00:55:35:  47000000 
INFO  @ Thu, 05 Oct 2017 00:55:38:  48000000 
INFO  @ Thu, 05 Oct 2017 00:55:40:  49000000 
INFO  @ Thu, 05 Oct 2017 00:55:43:  50000000 
INFO  @ Thu, 05 Oct 2017 00:55:45:  51000000 
INFO  @ Thu, 05 Oct 2017 00:55:48:  52000000 
INFO  @ Thu, 05 Oct 2017 00:55:50:  53000000 
INFO  @ Thu, 05 Oct 2017 00:55:53:  54000000 
INFO  @ Thu, 05 Oct 2017 00:55:55:  55000000 
INFO  @ Thu, 05 Oct 2017 00:55:57:  56000000 
INFO  @ Thu, 05 Oct 2017 00:56:00:  57000000 
INFO  @ Thu, 05 Oct 2017 00:56:02:  58000000 
INFO  @ Thu, 05 Oct 2017 00:56:05:  59000000 
INFO  @ Thu, 05 Oct 2017 00:56:07:  60000000 
INFO  @ Thu, 05 Oct 2017 00:56:10:  61000000 
INFO  @ Thu, 05 Oct 2017 00:56:12:  62000000 
INFO  @ Thu, 05 Oct 2017 00:56:15:  63000000 
INFO  @ Thu, 05 Oct 2017 00:56:17:  64000000 
INFO  @ Thu, 05 Oct 2017 00:56:20:  65000000 
INFO  @ Thu, 05 Oct 2017 00:56:22:  66000000 
INFO  @ Thu, 05 Oct 2017 00:56:25:  67000000 
INFO  @ Thu, 05 Oct 2017 00:56:27:  68000000 
INFO  @ Thu, 05 Oct 2017 00:56:30:  69000000 
INFO  @ Thu, 05 Oct 2017 00:56:34: #1 tag size is determined as 50 bps 
INFO  @ Thu, 05 Oct 2017 00:56:34: #1 tag size = 50 
INFO  @ Thu, 05 Oct 2017 00:56:34: #1  total tags in treatment: 69904536 
INFO  @ Thu, 05 Oct 2017 00:56:34: #1 user defined the maximum tags... 
INFO  @ Thu, 05 Oct 2017 00:56:34: #1 filter out redundant tags at the same location and the same strand by allowing at most 1 tag(s) 
INFO  @ Thu, 05 Oct 2017 00:56:36: #1  tags after filtering in treatment: 66653564 
INFO  @ Thu, 05 Oct 2017 00:56:36: #1  Redundant rate of treatment: 0.05 
INFO  @ Thu, 05 Oct 2017 00:56:36: #1 finished! 
INFO  @ Thu, 05 Oct 2017 00:56:36: #2 Build Peak Model... 
INFO  @ Thu, 05 Oct 2017 00:56:36: #2 Skipped... 
INFO  @ Thu, 05 Oct 2017 00:56:36: #2 Use 200 as fragment length 
INFO  @ Thu, 05 Oct 2017 00:56:36: #3 Call peaks... 
INFO  @ Thu, 05 Oct 2017 00:56:36: #3 Pre-compute pvalue-qvalue table... 
INFO  @ Thu, 05 Oct 2017 01:00:01: #3 Call peaks for each chromosome... 
INFO  @ Thu, 05 Oct 2017 01:02:25: #4 Write output xls file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.xls 
INFO  @ Thu, 05 Oct 2017 01:02:25: #4 Write peak in narrowPeak format file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.narrowPeak 
INFO  @ Thu, 05 Oct 2017 01:02:25: #4 Write summits bed file... /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_summits.bed 
INFO  @ Thu, 05 Oct 2017 01:02:26: Done! 
</pre>
Process 12446 returned: (0). Elapsed: 0:09:34. Peak memory: (Process: 0.837GB; Pipeline: 1.421GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`
> `/seq/scripts/mergePeaks.pl MergePeakID /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/*_peaks.narrowPeak | cut -f 1,2,3,4 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

<pre>
</pre>
Process 12820 returned: (0). Elapsed: 0:00:16.

Target to produce: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.rmdup.bam.bai`
> `samtools index /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.rmdup.bam`

<pre>
[E::hts_open_format] Failed to open file /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.rmdup.bam
samtools index: failed to open "/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.rmdup.bam": No such file or directory
</pre>
Process 12866 returned: (1). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 1.421GB)

Change status from running to failed

### Pipeline failed at:  (10-05 01:03:24) elapsed:16:18:36 _TIME_

('Total time: ', '16:18:36')
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 119, in <module>
    pm.run(cmd, index)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 8310
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -P 3 -M 100 -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 09:16:23) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.13
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  11821d98aa153bc95f3c2e8d95edcc89d9ff5392
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-04 15:37:09 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 1 deletion(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed']`
*                `mem`:  `100`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target to produce: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.sorted.bam.bai`
> `samtools index /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.sorted.bam`

<pre>
[E::hts_idx_push] Chromosome blocks not continuous
samtools index: failed to create index for "/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.sorted.bam": No such file or directory
</pre>
Process 23244 returned: (1). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Change status from running to failed

### Pipeline failed at:  (10-05 09:16:24) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 69, in <module>
    pm.run(cmd, index)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 23229
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -P 3 -M 100 -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 09:17:58) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.13
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  11821d98aa153bc95f3c2e8d95edcc89d9ff5392
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-04 15:37:09 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 1 deletion(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed']`
*                `mem`:  `100`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 23319 returned: (0). Elapsed: 0:18:34.

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 25028 returned: (0). Elapsed: 0:07:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 25564 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 25566 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 25567 returned: (0). Elapsed: 0:14:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 26527 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 26529 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 26530 returned: (0). Elapsed: 0:18:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 27442 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 27444 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 27445 returned: (0). Elapsed: 0:17:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 28236 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 28238 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 28239 returned: (0). Elapsed: 0:14:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 28828 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 28830 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 28831 returned: (0). Elapsed: 0:18:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 30223 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 30225 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 30226 returned: (0). Elapsed: 0:06:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 30463 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 30465 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 30466 returned: (0). Elapsed: 0:10:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 30958 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 30960 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 30961 returned: (0). Elapsed: 0:08:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 31283 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 31285 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 31286 returned: (0). Elapsed: 0:12:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 32326 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 32328 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 32329 returned: (0). Elapsed: 0:05:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 32805 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 32807 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 32808 returned: (0). Elapsed: 0:17:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 33396 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 33398 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 33399 returned: (0). Elapsed: 0:15:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 33786 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 33788 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 33789 returned: (0). Elapsed: 0:11:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 34121 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 34123 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`
> `Rscript /storage/kdriest/ATACqPCR/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`

<pre>
Fatal error: cannot open file '/storage/kdriest/ATACqPCR/scripts/normpeaks.R': No such file or directory
</pre>
Process 34124 returned: (2). Elapsed: 0:00:06. Peak memory: (Process: 0.002GB; Pipeline: 0.001GB)

Change status from running to failed

### Pipeline failed at:  (10-05 12:36:38) elapsed:3:18:39 _TIME_

('Total time: ', '3:18:39')
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 151, in <module>
    pm.run(cmd, norm_peak)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 23304
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -P 3 -M 100 -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 13:21:24) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.13
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  d21ba057a766508dc98682478f60f0a49cb612d1
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 09:45:40 -0700
*        Pipeline diff:  2 files changed, 7 insertions(+), 7 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed']`
*                `mem`:  `100`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `3`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Command is not callable: pigz
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 36284 returned: (0). Elapsed: 0:16:34.

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 36973 returned: (0). Elapsed: 0:09:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 37399 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 37401 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 37402 returned: (0). Elapsed: 0:18:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 38655 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 38657 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 38658 returned: (0). Elapsed: 0:17:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 39512 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 39514 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 39515 returned: (0). Elapsed: 0:17:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 40601 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 40603 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 40604 returned: (0). Elapsed: 0:14:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 41180 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 41182 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 41183 returned: (0). Elapsed: 0:18:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 44589 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 44591 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 44592 returned: (0). Elapsed: 0:07:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 46481 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 46485 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 46487 returned: (0). Elapsed: 0:16:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 48802 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 48804 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 48805 returned: (0). Elapsed: 0:11:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 49884 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 49886 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 49887 returned: (0). Elapsed: 0:16:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 50957 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 50959 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 50960 returned: (0). Elapsed: 0:06:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 51347 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 51349 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 51350 returned: (0). Elapsed: 0:21:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 52949 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 52951 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 52952 returned: (0). Elapsed: 0:20:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 53670 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 53673 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 53674 returned: (0). Elapsed: 0:13:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 54353 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 54355 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`

<pre>
Loading required package: DESeq2
Error in file(filename, "r", encoding = encoding) : 
  internet routines cannot be loaded
Calls: source -> file
In addition: Warning messages:
1: In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘DESeq2’
2: In file(filename, "r", encoding = encoding) :
  unable to load shared object '/storage/kdriest/anaconda3/envs/python2/lib/R/modules//internet.so':
  /usr/lib64/libkrb5.so.3: symbol krb5int_labeled_open, version krb5support_0_MIT not defined in file libkrb5support.so.0 with link time reference
Execution halted
</pre>
Process 54356 returned: (1). Elapsed: 0:00:06. Peak memory: (Process: 0.026GB; Pipeline: 0.001GB)

Change status from running to failed

### Pipeline failed at:  (10-05 17:09:04) elapsed:3:47:41 _TIME_

('Total time: ', '3:47:41')
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 151, in <module>
    pm.run(cmd, norm_peak)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 485, in run
    process_return_code, local_maxmem = self.callprint(cmd, shell, nofail, container)  # Run command
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 655, in callprint
    self.fail_pipeline(e)
  File "/storage/kdriest/.local/lib/python2.7/site-packages/pypiper/pypiper.py", line 1008, in fail_pipeline
    raise e
Exception: Subprocess returned nonzero result.

Pypiper terminating spawned child process 36269
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACPrimerTool/test_data/norm_peaks -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 18:24:49) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 1 deletion(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACPrimerTool/test_data/norm_peaks']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Can't find custom config file: pipelines/norm_peaks.yaml
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 38, in <module>
    tools = pm.config.tools
AttributeError: 'NoneType' object has no attribute 'tools'

Pypiper terminating spawned child process 60667

Change status from running to failed

### Pipeline failed at:  (10-05 18:24:49) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACPrimerTool/test_data/norm_peaks -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 18:42:52) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 1 deletion(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACPrimerTool/test_data/norm_peaks']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Can't find custom config file: pipelines/norm_peaks.yaml
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 38, in <module>
    tools = pm.config.tools
AttributeError: 'NoneType' object has no attribute 'tools'

Pypiper terminating spawned child process 5087

Change status from running to failed

### Pipeline failed at:  (10-05 18:42:52) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACPrimerTool/test_data/norm_peaks -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 18:44:36) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 1 deletion(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACPrimerTool/test_data/norm_peaks']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACPrimerTool/test_data/norm_peaks
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACPrimerTool/test_data/norm_peaks -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 18:45:21) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 1 deletion(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACPrimerTool/test_data/norm_peaks']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACPrimerTool/test_data/norm_peaks
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam.bai`
Waiting for file lock: /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/lock.coverage (10-05 18:45:21) elapsed:0:00:00 _TIME_

Change status from running to waiting
.----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACPrimerTool/test_data/norm_peaks -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-05 18:46:40) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  1 file changed, 1 insertion(+), 1 deletion(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACPrimerTool/test_data/norm_peaks']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACPrimerTool/test_data/norm_peaks
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 6474 returned: (0). Elapsed: 0:21:34.

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 7515 returned: (0). Elapsed: 0:11:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 7818 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 7820 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 7821 returned: (0). Elapsed: 0:21:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 8350 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 8352 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.0GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 8353 returned: (0). Elapsed: 0:20:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 8780 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 8782 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 8791 returned: (0). Elapsed: 0:26:35.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 9570 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 9596 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 9597 returned: (0). Elapsed: 0:18:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 9943 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 9945 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 9946 returned: (0). Elapsed: 0:25:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 10540 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 10542 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 10543 returned: (0). Elapsed: 0:09:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 10683 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 10685 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 10686 returned: (0). Elapsed: 0:15:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 10866 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 10868 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 10869 returned: (0). Elapsed: 0:10:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 11111 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 11113 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 11114 returned: (0). Elapsed: 0:16:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 11511 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 11513 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 11514 returned: (0). Elapsed: 0:06:33.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 11676 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 11678 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.0GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 11679 returned: (0). Elapsed: 0:20:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 12056 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 12058 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 12059 returned: (0). Elapsed: 0:20:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 12405 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 12407 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam.bai`

Targetless command, running...
> `bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

<pre>
</pre>
Process 12408 returned: (0). Elapsed: 0:13:34.
> `paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed`

<pre>
</pre>
Process 13016 returned: (0). Elapsed: 0:00:00.
> `mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed`

<pre>
</pre>
Process 13018 returned: (0). Elapsed: 0:00:00. Peak memory: (Process: 0.001GB; Pipeline: 0.001GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`
> `Rscript /storage/kdriest/ATACPrimerTool/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`

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

    IQR, mad, xtabs

The following objects are masked from ‘package:base’:

    anyDuplicated, append, as.data.frame, as.vector, cbind, colnames,
    do.call, duplicated, eval, evalq, Filter, Find, get, grep, grepl,
    intersect, is.unsorted, lapply, lengths, Map, mapply, match, mget,
    order, paste, pmax, pmax.int, pmin, pmin.int, Position, rank,
    rbind, Reduce, rownames, sapply, setdiff, sort, table, tapply,
    union, unique, unlist, unsplit

Loading required package: IRanges
Loading required package: GenomicRanges
Loading required package: GenomeInfoDb
Loading required package: SummarizedExperiment
Loading required package: Biobase
Welcome to Bioconductor

    Vignettes contain introductory material; view with
    'browseVignettes()'. To cite Bioconductor, see
    'citation("Biobase")', and for packages 'citation("pkgname")'.

Loading required package: Rcpp
Loading required package: RcppArmadillo
</pre>
Process 13019 returned: (0). Elapsed: 0:00:51. Peak memory: (Process: 0.467GB; Pipeline: 0.001GB)

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks_annotated.txt`
> `annotatePeaks.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed hg38 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks_annotated.txt`

<pre>


!!!!Genome hg38 not found in /storage/kdriest/anaconda3/share/homer-4.9.1-5/.//config.txt

	To check if is available, run "perl /storage/kdriest/anaconda3/share/homer-4.9.1-5/.//configureHomer.pl -list"
	If so, add it by typing "perl /storage/kdriest/anaconda3/share/homer-4.9.1-5/.//configureHomer.pl -install hg38"

</pre>
Process 13043 returned: (0). Elapsed: 0:00:06.

Change status from running to completed

Cleaning up flagged intermediate files...

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed
`rm /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed`

Removing glob: /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed
> `Time`	4:20:34	norm_peaks	_RES_
> `Success`	10-05-23:07:14	norm_peaks	_RES_

##### [Epilogue:]
*   Total elapsed time:  4:20:34
*     Peak memory used:  0.47 GB
* Pipeline completed at:  (10-05 23:07:14) elapsed:4:20:34 _TIME_

Pypiper terminating spawned child process 6460
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peak.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-06 08:36:38) elapsed:0:00:01 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  2 files changed, 48 insertions(+), 43 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peak.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Can't find custom config file: pipelines/norm_peak.yaml
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 36, in <module>
    tools = pm.config.tools
AttributeError: 'NoneType' object has no attribute 'tools'

Pypiper terminating spawned child process 24570

Change status from running to failed

### Pipeline failed at:  (10-06 08:36:38) elapsed:0:00:00 _TIME_

('Total time: ', '0:00:01')
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
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peak.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-06 08:38:24) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  2 files changed, 48 insertions(+), 43 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peak.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Can't find custom config file: pipelines/norm_peak.yaml
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 36, in <module>
    tools = pm.config.tools
AttributeError: 'NoneType' object has no attribute 'tools'

Pypiper terminating spawned child process 24605

Change status from running to failed

### Pipeline failed at:  (10-06 08:38:24) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-06 08:39:03) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  2 files changed, 48 insertions(+), 43 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`
Traceback (most recent call last):
  File "pipelines/norm_peaks.py", line 147, in <module>
    pm.clean_add(temp)
NameError: name 'temp' is not defined

Pypiper terminating spawned child process 24632

Change status from running to failed

### Pipeline failed at:  (10-06 08:39:03) elapsed:0:00:00 _TIME_

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
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-06 08:39:53) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  2 files changed, 50 insertions(+), 44 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks_annotated.txt`

Change status from running to completed
> `Time`	0:00:00	norm_peaks	_RES_
> `Success`	10-06-08:39:53	norm_peaks	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:00:00
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (10-06 08:39:53) elapsed:0:00:00 _TIME_

Pypiper terminating spawned child process 24785
----------------------------------------
##### [Pipeline run code and environment:]
*              Command:  `pipelines/norm_peaks.py -O test_out/ -S norm_peaks -G hg38 -C norm_peaks.yaml -I /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ -return 500 -gs hs`
*         Compute host:  changrila2.stanford.edu
*          Working dir:  /storage/kdriest/ATACPrimerTool
*            Outfolder:  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/
*  Pipeline started at:   (10-06 08:40:14) elapsed:0:00:00 _TIME_

##### [Version log:]
*       Python version:  2.7.5
*          Pypiper dir:  `/storage/kdriest/.local/lib/python2.7/site-packages/pypiper`
*      Pypiper version:  0.5.0
*         Pipeline dir:  `/storage/kdriest/ATACPrimerTool/pipelines`
*     Pipeline version:  None
*        Pipeline hash:  08ddb6b0391d1b9038752660cd3a9222ef6704f8
*      Pipeline branch:  * master
*        Pipeline date:  2017-10-05 17:49:40 -0700
*        Pipeline diff:  2 files changed, 50 insertions(+), 44 deletions(-)

##### [Arguments passed to pipeline:]
*             `input2`:  `None`
*              `rmdup`:  `False`
*       `manual_clean`:  `False`
*              `input`:  `['/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/']`
*                `mem`:  `4000`
*        `sample_name`:  `norm_peaks`
*        `config_file`:  `norm_peaks.yaml`
*            `genomeS`:  `hs`
*      `output_parent`:  `test_out/`
*   `single_or_paired`:  `single`
*         `narrowpeak`:  `False`
*    `genome_assembly`:  `hg38`
*            `returnN`:  `500`
*              `cores`:  `1`
*              `fresh`:  `False`
*            `recover`:  `False`
*       `force_follow`:  `False`

----------------------------------------


Change status from initializing to running
Bam file directory: /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/
> `Genome`	hg38	norm_peaks	_RES_

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/adipose_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/artery_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_3.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/breast_epithelium_4.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/colon_2.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/esophagus_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/liver_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/nerve_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/ovary_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/prostate_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/spleen_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/stomach_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam.bai`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/testis_1.sort_peaks.narrowPeak`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed`

Target exists: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed`

Target to produce: `/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks_annotated.txt`
> `annotatePeaks.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed hg38 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks_annotated.txt`

<pre>

	Peak file = /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed
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
Process 24927 returned: (0). Elapsed: 0:01:47.

Change status from running to completed
> `Time`	0:01:47	norm_peaks	_RES_
> `Success`	10-06-08:42:01	norm_peaks	_RES_

##### [Epilogue:]
*   Total elapsed time:  0:01:47
*     Peak memory used:  0.0 GB
* Pipeline completed at:  (10-06 08:42:01) elapsed:0:01:47 _TIME_

Pypiper terminating spawned child process 24913
