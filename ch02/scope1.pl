#!/usr/bin/perl
# scope1.pl

use warnings;

$record = 4;
print "We're at record ", $record, "\n";

{
    my $record;
    $record = 7;
    print "Inside the block, we're at record ", $record, "\n";
}

print "Outside, we're still at record ", $record, "\n";
