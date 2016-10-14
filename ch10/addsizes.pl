#!/usr/bin/perl
# addsizes.pl

use warnings;
use strict;

my @result = `perl directory-dir.pl`;

my $size = 0;

foreach (@result) {
    if (/^.{30}[drwox]*\t(\d+)$/) {
        $size += $1;
    }
}

print "The total size of all files: $size\n";
