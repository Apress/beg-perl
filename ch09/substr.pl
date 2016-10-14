#!/usr/bin/perl
# substr.pl

use warnings;
use strict;

print "Enter a string:       ";
chomp(my $string = <STDIN>);

print "Enter starting index: ";
chomp(my $index = <STDIN>);

print "Enter length:         ";
chomp(my $length = <STDIN>);

my $s = substr($string, $index, $length);

print "result: $s\n";

# now, overwrite $string
substr($string, 0, 5) = 'hello, world!';

print "string is now: $string\n";
