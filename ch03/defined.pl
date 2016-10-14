#!/usr/bin/perl
# defined.pl

use warnings;
use strict;

my ($var1, $var2);
$var2 = 10;

if (defined $var1) {
   print "\$var1 has a value.\n";
}
if (defined $var2) {
   print "\$var2 has a value.\n";
}
