#!/usr/bin/perl
# reverse.pl

use warnings;
use strict;

my %where = (
    Gary     => "Dallas",
    Lucy     => "Exeter",
    Ian      => "Reading",
    Samantha => "Portland"
);

my %who = reverse %where;

foreach (keys %who) {
    print "in $_ lives $who{$_}\n";
}
