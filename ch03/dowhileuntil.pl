#!/usr/bin/perl
# dowhiledountil.pl

use warnings;
use strict;

my $i = 1;

print "starting do...while:\n";
do {
    print "    the value of \$i: $i\n";
    $i++;
} while ($i < 6);

$i = 1;

print "starting do...until\n";
do {
    print "    the value of \$i: $i\n";
    $i++;
} until ($i >= 6);
