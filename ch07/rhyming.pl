#!/usr/bin/perl
# rhyming.pl

use warnings;
use strict;

my $syllable = "ink";

while (<>) {
   print if /$syllable$/;
}
