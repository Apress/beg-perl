#!/usr/bin/perl
# count2.pl

use warnings;
use strict;

my @names = qw(
    John   Sue    Larry
    Mary   John   Mary
    Larry  John   Joe
    Lisa   John   Mary
);

my %count;

$count{$_}++ foreach @names;

print "$_ \toccurs $count{$_} time(s)\n" foreach keys %count;
