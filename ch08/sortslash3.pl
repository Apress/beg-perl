#!/usr/bin/perl
# sortslash3.pl

use warnings;
use strict;

open(FH, '-|', 'perl sort2.pl gettysburg.txt');

my $i = 1;

while (<FH>) {
    if ($i % 3 == 0) {
        print;
    }
    $i++;
}

close FH;
