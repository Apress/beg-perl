#!/usr/bin/perl
# assignlist.pl

use warnings;
use strict;

my $scalar0;
my $scalar1;
my $scalar2;
my @array = (10, 20, 30);

($scalar0, $scalar1, $scalar2) = @array;

print "Scalar zero is $scalar0\n";
print "Scalar one is $scalar1\n";
print "Scalar two is $scalar2\n";
