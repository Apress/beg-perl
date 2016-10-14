#!/usr/bin/perl
# redo.pl

use warnings;
use strict;

my $number = 10;

while (<STDIN>) {
    chomp;
    print "You entered: $_\n";
    if ($_ == $number) {
        $_++;
        redo;
    }
    print "Going to read the next number now...\n";
}
