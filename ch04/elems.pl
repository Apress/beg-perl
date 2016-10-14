#!/usr/bin/perl
# elems.pl

use warnings;
use strict;

my @array = qw(alpha bravo charlie delta);

print "Scalar value : ", scalar(@array), "\n";
print "Highest index: ", $#array, "\n";
