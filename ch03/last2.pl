#!/usr/bin/perl
# last2.pl

use warnings;
use strict;

while (<STDIN>) {
    last if $_ eq "done\n";
    print "You entered: $_";
}

print "All done!\n";
