#!/usr/bin/perl
# foreach2.pl

use warnings;
use strict;

my @array = qw(Australia Asia Europe Africa);
my $element;

foreach $element (@array) {
    print $element, "\n";
}
