# using pre-fix of fastq file 
python pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -plot FALSE -window 100 -overlap 0.9    
