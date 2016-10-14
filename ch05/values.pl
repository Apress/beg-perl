#!/usr/bin/perl
# values.pl

use warnings;
use strict;

my %where = (
        Gary     => "Dallas",
        Lucy     => "Exeter",
        Ian      => "Reading",
        Samantha => "Portland"
);

foreach (values %where) {
    print "someone lives in $_\n";
}
