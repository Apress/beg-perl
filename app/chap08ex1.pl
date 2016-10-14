#!/usr/bin/perl
# chap08ex1.pl

use warnings;
use strict;

open(INFH,  '<', 'gettysburg.txt') or die $!;
open(OUTFH, '>', 'ex1out.txt')     or die $!;

while (<INFH>) {
next if /^\s*$/;
    my @words = split;
    print OUTFH "$_\n" foreach @words;
}

close INFH;
close OUTFH;
