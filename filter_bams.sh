# using pre-fix of fastq file 
python pipelines/filter_bams.py -P 3 -M 100 -O test_out -S BJ_filtered_bams -G hg19 -C filter_bams.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed    
