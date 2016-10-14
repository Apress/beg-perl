#!/usr/bin/perl
# last1.pl

use warnings;
use strict;

while (<STDIN>) {
    if ($_ eq "done\n") {
        last;
    }
    print "You entered: $_";
}
