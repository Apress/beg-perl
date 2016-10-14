#!/usr/bin/perl
# badhash.pl

use warnings;
use strict;

my %where = (
        Gary     => "Dallas",
        Lucy     => "Exeter",
        Ian      => "Reading",
        Samantha => "Portland"
);

delete $where{Lucy};
print "Lucy lives in $where{Lucy}\n";
