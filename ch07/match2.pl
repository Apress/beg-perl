#!/usr/bin/perl
# match2.pl

use warnings;
use strict;

$_ = "Nobody wants to hurt you... 'cept, I do hurt people sometimes, Case.";

if ($_ =~ /people/) {
   print "Hooray! Found the word 'people'\n";
}
