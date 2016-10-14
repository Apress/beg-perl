#!/usr/bin/perl
# match5.pl

use warnings;
use strict;

$_ = "Nobody wants to hurt you... 'cept, I do hurt people sometimes, Case.";

if (/case/) {
   print "I guess it's just the way I'm made.\n";
} else {
   print "Case? Where are you, Case?\n";
}
