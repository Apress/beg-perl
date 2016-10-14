#!/usr/bin/perl
# byref1.pl

use warnings;
use strict;

my $var = 10;
print "before: $var\n";
change_var($var);
print "after:  $var\n";

sub change_var {
    print "in change_var() before: $_[0]\n";
    ++$_[0];
    print "in change_var() after:  $_[0]\n";
}
