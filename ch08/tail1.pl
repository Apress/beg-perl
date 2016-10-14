#!/usr/bin/perl
# tail1.pl

use warnings;
use strict;

open(FILE, '<', 'gettysburg.txt') or die $!;
my @last5;

while (<FILE>) {
   push @last5, $_;            # add to the end
   shift @last5 if @last5 > 5; # take from the beginning
}

close FILE;

print "Last five lines:\n", @last5;
