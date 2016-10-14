#!/usr/bin/perl
# exists.pl

use warnings;
use strict;

my %where = (
        Gary     => "Dallas",
        Lucy     => "Exeter",
        Ian      => "Reading",
        Samantha => "Portland"
);

print "Gary exists in the hash!\n"  if exists $where{Gary};
print "Larry exists in the hash!\n" if exists $where{Larry};
