#!/usr/bin/perl

#use strict;
#use warnings;

my $peakid = shift;
chomp($peakid);

my @peak_beds;
@peak_beds = <> if(scalar(@ARGV)==0);
@peak_beds = @ARGV if(scalar(@ARGV)>0);
chomp(@peak_beds);

`rm concat.bed` if(-f "concat.bed");

foreach my $bed (@peak_beds){
    `sed '/track/d' $bed >> concat.bed`;
}

`sort -k1,1 -k2,2n concat.bed > concat.sort.bed`;
open(PH,"mergeBed -i concat.sort.bed | ");
my $peak_cnt = 0;
while(<PH>){
    chomp;
    my ($chrm,$start,$stop,$cnt) = split /\t/;
    $peak_cnt++;
    my $id = $peakid . "." . $peak_cnt;
    print "$chrm\t$start\t$stop\t$id\t" . ($stop-$start) . "\t+\t$cnt\n";
}close PH;

`rm concat.bed`;
`rm concat.sort.bed`;
