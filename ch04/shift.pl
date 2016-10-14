#!/usr/bin/perl
# shift.pl

use warnings;
use strict;

my @array = ();
unshift @array, "first";
print "Array is now: @array\n";
unshift @array, "second", "third";
print "Array is now: @array\n";
shift @array ;
print "Array is now: @array\n";
