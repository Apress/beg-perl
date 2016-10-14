#!/usr/bin/perl
# keys.pl

use warnings;
use strict;

my %where = (
        Gary     => "Dallas",
        Lucy     => "Exeter",
        Ian      => "Reading",
        Samantha => "Portland"
);

foreach (keys %where) {
    print "$_ lives in $where{$_}\n";
}
