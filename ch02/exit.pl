#!/usr/bin/perl
# exit.pl

use warnings;
use strict;

print "enter value to return back to the calling program: ";
chomp(my $value = <STDIN>);

exit($value);
