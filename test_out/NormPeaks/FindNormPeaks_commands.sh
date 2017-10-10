# Pipeline started at 10-09 18:11:57

samtools rmdup /storage/kdriest/ATACqPCR/ENCODE_human_data/bams/processed/adipose_1.sort.bam /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam

# Pipeline started at 10-09 18:22:00

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

# Pipeline started at 10-09 18:26:25

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/adipose_1.sort.rmdup.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/artery_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_3.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/breast_epithelium_4.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/colon_2.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/esophagus_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/liver_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/nerve_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/ovary_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/prostate_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/spleen_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/stomach_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks.bed -b /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/rmdup_bams/testis_1.sort.rmdup.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed

paste /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/temp.bed > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/Merged_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed

mv /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts_temp.bed /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts.bed

Rscript /storage/kdriest/ATACPrimerTool/scripts/normpeaks.R /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/MergedPeaks_counts.bed 500 /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks.bed

annotatePeaks.pl /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks.bed hg38 > /storage/kdriest/ATACPrimerTool/test_out/NormPeaks_test/norm_peaks_annotated.txt

# Pipeline started at 10-10 09:24:52

