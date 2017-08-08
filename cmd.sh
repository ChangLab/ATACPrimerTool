# using pre-fix of fastq file 
python pipelines/ATACqPCR.py -P 3 -M 100 -O test_out -S BJ_qPCR -G hg19 -C ATACqPCR.yaml -I test_data/BJ_bams/ -I2 test_data/test_peaks.bed -I3 0.8 -I4 3 -I5 FALSE -I6 100 -I7 0.9    
