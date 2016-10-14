#!/usr/bin/perl
# deref2.pl

use warnings;
use strict;

my @band = qw(Crosby Stills Nash Young);
my $ref  = \@band;
foreach (0..$#band) {
   print "Array    : ", $band[$_]  , "\n";
   print "Reference: ", ${$ref}[$_], "\n";
}
