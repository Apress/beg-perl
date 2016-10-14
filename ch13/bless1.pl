#!/usr/bin/perl
# bless1.pl

use warnings;
use strict;

my $a = {};

print '$a is a ', ref($a), " reference\n";

bless($a, "Person1");

print '$a is a ', ref($a), " reference\n";
