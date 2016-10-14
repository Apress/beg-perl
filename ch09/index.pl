#! /usr/bin/perl
# index.pl

use warnings;
use strict;

print "Enter a string:    ";
chomp(my $string = <STDIN>);

print "Enter a substring: ";
chomp(my $substring = <STDIN>);

my $result = index($string, $substring);

if ($result != -1) {
    print "the substring was found at index: $result\n";
} else {
    print "the substring was not found\n";
}
