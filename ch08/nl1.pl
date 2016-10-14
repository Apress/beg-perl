#!/usr/bin/perl
# nl1.pl

use warnings;
use strict;

open(FILE, '<', 'nlexample.txt') or die $!;
my $lineno = 1;

while (<FILE>) {
   print $lineno++;
   print ": $_";
}

close FILE;
