#!/usr/bin/perl
# chap02ex2.pl

use warnings;
use strict;

print "enter a hex number: ";
chomp(my $hexnum = <STDIN>);
print "converted to an int: ", hex($hexnum), "\n";

print "enter an octal number: ";
chomp(my $octal = <STDIN>);
print "converted to an int: ", oct($octal), "\n";
