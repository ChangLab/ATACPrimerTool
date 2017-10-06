# Pipeline started at 10-03 17:46:05

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n adipose_1.sort  -q 0.01 --shift 0 --nomodel 

samtools index /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.filter.bam

# Pipeline started at 10-04 08:44:48

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/artery_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n artery_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_3.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_3.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/breast_epithelium_4.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n breast_epithelium_4.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n colon_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/colon_2.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n colon_2.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/esophagus_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n esophagus_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/liver_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n liver_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/nerve_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n nerve_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/ovary_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n ovary_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/prostate_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n prostate_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/spleen_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n spleen_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/stomach_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n stomach_1.sort  -q 0.01 --shift 0 --nomodel 

picard MarkDuplicates  INPUT=/storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/testis_1.sort.bam OUTPUT=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam METRICS_FILE=/storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort_picard_metrics_bam.txt VALIDATION_STRINGENCY=LENIENT ASSUME_SORTED=true REMOVE_DUPLICATES=true > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort_picard_metrics_log.txt

samtools index /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam

/seq/ATAC-seq/Code/bam2bed_shift.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam

macs2 callpeak  -t  /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bed -f BED  -g hs --outdir /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38 -n testis_1.sort  -q 0.01 --shift 0 --nomodel 

/seq/scripts/mergePeaks.pl MergePeakID /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/peak_calling_hg38/*_peaks.narrowPeak | cut -f 1,2,3,4 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed

samtools index /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.rmdup.bam

# Pipeline started at 10-05 09:16:23

samtools index /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.sorted.bam

# Pipeline started at 10-05 09:17:58

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

Rscript /storage/kdriest/ATACqPCR/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed

# Pipeline started at 10-05 13:21:23

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

Rscript /storage/kdriest/ATACPrimerTool/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed

# Pipeline started at 10-05 18:24:49

# Pipeline started at 10-05 18:42:52

# Pipeline started at 10-05 18:44:36

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

# Pipeline started at 10-05 18:45:21

# Pipeline started at 10-05 18:46:40

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed

Rscript /storage/kdriest/ATACPrimerTool/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed

annotatePeaks.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed hg38 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks_annotated.txt

# Pipeline started at 10-06 08:36:37

# Pipeline started at 10-06 08:38:24

# Pipeline started at 10-06 08:39:03

# Pipeline started at 10-06 08:39:53

# Pipeline started at 10-06 08:40:14

annotatePeaks.pl /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks.bed hg38 > /storage/kdriest/ATACPrimerTool/test_out/norm_peaks/norm_peaks_annotated.txt

