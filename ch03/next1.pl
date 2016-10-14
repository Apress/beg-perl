#!/usr/bin/perl
# next1.pl

use warnings;
use strict;

print "Please enter some text:\n";
while (<STDIN>) {
    if ($_ eq "\n") {
        next;
    }
    chomp;
    print "You entered: [$_]\n";
}
