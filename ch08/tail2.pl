#!/usr/bin/perl
# tail2.pl

use warnings;
use strict;

open(FILE, '<', 'gettysburg.txt') or die $!;
my @speech = <FILE>;   # slurp the whole file into memory
close FILE;

print "Last five lines:\n", @speech[-5 .. -1];
