#!/usr/bin/perl
# chap05ex2.pl

use warnings;
use strict;

my %phonenumbers = (
    John  => '555-1212',
    Sue   => '555-2222',
    Larry => '555-3232',
    Moe   => '555-4242'
);

print "enter name: ";
while (<STDIN>) {
    chomp;
    if (exists $phonenumbers{$_}) {
        print "$_ has the phone number: $phonenumbers{$_}\n";
    } else {
        print "$_ is not in the phone book\n";
    }
    print "enter name: ";
}
