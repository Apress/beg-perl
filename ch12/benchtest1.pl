#!/usr/bin/perl
# benchtest1.pl

use warnings;
use strict;
use Benchmark;

my $howmany = 200000;
my $what    = q/my $j=1; foreach (1..100) {$j *= $_}/;

timethis($howmany, $what);
