#!/usr/bin/perl
# chap03ex3.pl

use warnings;
use strict;

for (my $i = 1; $i <= 50; $i++) {
    if ($i % 5 == 0) {
        print "$i is evenly divisible by 5\n";
    }
}

