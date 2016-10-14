#!/usr/bin/perl
# scope3.pl

use warnings;
use strict;

my $record;
$record = 4;
print "We're at record ", $record, "\n";

{
    # can use my() and assign on the same line
    my $record = 7;
    print "Inside the block, we're at record ", $record, "\n";
}

print "Outside, we're still at record ", $record, "\n";
