#!/usr/bin/perl
# countdown.pl

use warnings;
use strict;

my @count = (1..5);

foreach (reverse(@count)) {
    print "$_...\n";
    sleep 1;
}

print "BLAST OFF!\n";
