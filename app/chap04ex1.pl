#!/usr/bin/perl
# chap04ex1.pl

use warnings;
use strict;

my @a = (2, 4, 6, 8);

foreach (@a) {
    print "$_ ** 2 = ", $_ ** 2, "\n";
}

foreach (reverse @a) {
    print "$_ ** 2 = ", $_ ** 2, "\n";
}
