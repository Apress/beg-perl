#!/usr/bin/perl
# add2.pl

use warnings;
use strict;

add(10, 2);

sub add {
    my($arg1, $arg2) = @_;

    print "sum is: ", $arg1 + $arg2, "\n";
}
