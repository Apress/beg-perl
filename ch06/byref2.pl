#!/usr/bin/perl
# byref2.pl

use warnings;
use strict;

my $var = 10;
print "before: $var\n";
change_var($var);
print "after:  $var\n";

sub change_var {
    my($v) = @_;
    # or: my $v = shift;

    print "in change_var() before: $v\n";
    ++$v;
    print "in change_var() after:  $v\n";
}
