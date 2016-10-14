#!/usr/bin/perl
# lastindex.pl

use warnings;
use strict;

my @array = (2, 4, 6, 8);

print "the last index is:   ", $#array, "\n";
print "the last element is: ", $array[$#array], "\n";
