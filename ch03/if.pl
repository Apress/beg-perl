#!/usr/bin/perl
# if.pl

use warnings;
use strict;

print "please enter a number: ";
chomp(my $number = <STDIN>);
my $result = 0;
if ($number != 0) {
    $result = 100 / $number;
}

print "the result is: $result\n";
