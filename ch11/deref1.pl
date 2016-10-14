#!/usr/bin/perl
# deref1.pl

use warnings;
use strict;

my @array   = (2, 4, 6, 8, 10);
my $array_r = \@array;

print "This is our dereferenced array: @{$array_r}\n";
foreach (@{$array_r}) {
   print "An element: $_\n";
}
print "The highest index is $#{$array_r}\n";
print "This is what our reference looks like: $array_r\n";
