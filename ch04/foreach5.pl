#!/usr/bin/perl
# foreach5.pl

use warnings;
use strict;

my @array = (10, 20, 30, 40);

print "Before: @array\n";

foreach (@array) {
    $_ *= 2;
}

print "After: @array\n";
