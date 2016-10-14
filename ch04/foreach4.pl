#!/usr/bin/perl
# foreach4.pl

use warnings;
use strict;

my @array = (1, 3, 5, 7, 9);
my $i = "Hello there";
foreach $i (@array) {
   print "This element: $i\n";
}
print "All done: $i\n";
