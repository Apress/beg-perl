#!/usr/bin/perl
# add1.pl

use warnings;
use strict;

add(10, 2);

sub add {
    my $arg1 = shift @_;
    my $arg2 = shift;     # defaults to shifting @_

    print "sum is: ", $arg1 + $arg2, "\n";
}
