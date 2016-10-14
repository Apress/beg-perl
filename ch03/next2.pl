#!/usr/bin/perl
# next2.pl

use warnings;
use strict;

print "Please enter some text:\n";
while (<STDIN>) {
    next if $_ eq "\n";
    chomp;
    print "You entered: [$_]\n";
}
