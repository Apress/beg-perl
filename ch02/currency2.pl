#!/usr/bin/perl
# currency2.pl

use warnings;
use strict;

print "Currency converter\n\nPlease enter the exchange rate: ";
my $yen = <STDIN>;
print "49518 Yen is ", (49_518/$yen), " dollars\n";
print "360 Yen is   ", (   360/$yen), " dollars\n";
print "30510 Yen is ", (30_510/$yen), " dollars\n";
