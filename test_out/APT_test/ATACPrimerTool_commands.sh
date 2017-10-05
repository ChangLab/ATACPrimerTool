# Pipeline started at 10-05 09:35:53

Rscript /storage/kdriest/ATACPrimerTool/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed

bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed

samtools view -c -F 1284 test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam

samtools view -c -F 1284 test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/dipose_1.tes.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/y_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_3.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/st_epithelium_4.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/colon_2.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/sophagus_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ver_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/nerve_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/ovary_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/prostate_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/spleen_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stomach_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredbams/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/stis_1.tes.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

cat test_data/ENCODE_bams/adipose_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/artery_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/breast_epithelium_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/breast_epithelium_3.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/breast_epithelium_4.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/colon_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/colon_2.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/esophagus_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/liver_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/nerve_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/ovary_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/prostate_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/spleen_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/stomach_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

cat test_data/ENCODE_bams/testis_1.test_read_counts.txt >> /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt

Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed

bedtools getfasta -fi /storage/kdriest/ATACPrimerTool/genomes/hg38_chr.fa -bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed

# Pipeline started at 10-05 16:31:19

Rscript /storage/kdriest/ATACPrimerTool/scripts/make_window_bed.R test_data/test_peaks.bed 100 /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed

bedtools slop  -i test_data/test_peaks.bed -g /storage/kdriest/ATACPrimerTool/genomes/hg38.chromSizes -b 2000 | sort -k1,1 -k2,2n - > /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed

samtools view -c -F 1284 test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/adipose_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/artery_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_3.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/breast_epithelium_4.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/colon_2.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/esophagus_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/liver_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/nerve_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/ovary_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/prostate_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/spleen_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/stomach_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed

samtools view -c -F 1284 test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test_read_counts.txt

samtools view -b -F 4 -L /storage/kdriest/ATACPrimerTool/test_out/APT_test/ext_peak.bed test_data/ENCODE_bams/testis_1.test.bam > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam

samtools sort -n /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | samtools fixmate - - | bedtools bamtobed -i - -bedpe | cut -f 1,2,6 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.filter.bam | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/adipose_1.test.includeinsert.bed -f 0.9 | cut -f 1,2,3,4,5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/artery_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_3.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/breast_epithelium_4.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/colon_2.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/esophagus_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/liver_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/nerve_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/ovary_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/prostate_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/spleen_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/stomach_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.filter.bam | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed

bedtools coverage -a /storage/kdriest/ATACPrimerTool/test_out/APT_test/qPCR_windows.bed -b /storage/kdriest/ATACPrimerTool/test_out/APT_test/filteredinputs/testis_1.test.includeinsert.bed -f 0.9 | cut -f 5 > /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.o.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.o.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage

paste /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/temp.f9.bed > /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed

mv /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.temp.f9.bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage

Rscript /storage/kdriest/ATACPrimerTool/scripts/find_qPCR_regions.R /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.o.coverage /storage/kdriest/ATACPrimerTool/test_out/APT_test/combined.f9.coverage 0.8 3 /storage/kdriest/ATACPrimerTool/test_out/APT_test/read_counts.txt /storage/kdriest/ATACPrimerTool/test_out/APT_test /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed

bedtools getfasta -fi /storage/kdriest/ATACPrimerTool/genomes/hg38_chr.fa -bed /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3.bed -name -bedOut > /storage/kdriest/ATACPrimerTool/test_out/APT_test/test_peaks_qPCR_regions_corr0.8_cov3_seq.bed

