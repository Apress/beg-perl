#!/usr/bin/perl
# chap05ex1.pl

use warnings;
use strict;

my %hash = (
    scalar => 'dollar sign',
    array  => 'at sign',
    hash   => 'percent sign'
);

foreach (sort keys %hash) {
    print "$_: $hash{$_}\n";
}
