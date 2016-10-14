#!/usr/bin/perl
# scope2.pl

use warnings;
use strict;

$record = 4;
print "We're at record ", $record, "\n";

{
    my $record;
    $record = 7;
    print "Inside the block, we're at record ", $record, "\n";
}

print "Outside, we're still at record ", $record, "\n";
