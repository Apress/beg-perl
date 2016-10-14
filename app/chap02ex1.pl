#!/usr/bin/perl
# chap02ex1.pl

use warnings;
use strict;

print "Currency converter\n\n";

print "Please enter the exchange rate: ";
chomp(my $yen = <STDIN>);

print "Enter first price to convert: ";
chomp(my $price1 = <STDIN>);

print "Enter second price to convert: ";
chomp(my $price2 = <STDIN>);

print "Enter third price to convert: ";
chomp(my $price3 = <STDIN>);

print "$price1 Yen is ", ($price1/$yen), " dollars\n";
print "$price2 Yen is ", ($price2/$yen), " dollars\n";
print "$price3 Yen is ", ($price3/$yen), " dollars\n";

