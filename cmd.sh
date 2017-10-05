python pipelines/ATACPrimerTool.py -O test_out -S APT_test -G hg38 -C ATACPrimerTool.yaml -I test_data/ENCODE_bams -I2 test_data/test_peaks.bed -corr 0.8 -cov 3 -window 100 -overlap 0.9 -seq -counts
