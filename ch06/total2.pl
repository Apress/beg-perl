#!/usr/bin/perl
# total2.pl

use warnings;
use strict;

my $total = total(111, 107, 105, 114, 69);
print "the total is: $total\n";

my $sum_of_100 = total(1..100);
print "the sum of 100 is: $sum_of_100\n";

sub total {
   my $total = 0;
   $total += $_ foreach @_;
   $total;
}
