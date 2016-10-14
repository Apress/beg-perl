#!/usr/bin/perl
# sort1.pl

use warnings;
use strict;

my $input  = shift;
my $output = shift;

open(INPUT, '<', $input)   or die "Couldn't open file $input: $!\n";
open(OUTPUT, '>', $output) or die "Couldn't open file $output: $!\n";

my @file = <INPUT>;
@file = sort @file;

print OUTPUT @file;

close INPUT;
close OUTPUT;
