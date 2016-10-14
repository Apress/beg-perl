#!/usr/bin/perl
# hash.pl

use warnings;
use strict;

my $who = "Ian";

my %where = (
        Gary     => "Dallas",
        Lucy     => "Exeter",
        Ian      => "Reading",
        Samantha => "Portland"
);

print "Gary lives in ", $where{Gary}, "\n";
print "$who lives in $where{$who}\n";
