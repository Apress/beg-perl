#!/usr/bin/perl
# die.pl

use warnings;
use strict;

print "please enter a string to pass to die: ";
chomp(my $string = <STDIN>);

die($string);
print "didn't make it this far...\n";
