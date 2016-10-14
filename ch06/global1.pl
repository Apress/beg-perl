#!/usr/bin/perl
# global1.pl

use warnings;

$x = 10;

access_global();

sub access_global {
    print "value of \$x: $x\n";
}
