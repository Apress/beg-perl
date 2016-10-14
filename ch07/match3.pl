#!/usr/bin/perl
# match3.pl

use warnings;
use strict;

$_ = "Nobody wants to hurt you... 'cept, I do hurt people sometimes, Case.";

if (/I do/) {
   print "'I do' is in that string.\n";
}

if (/sometimes Case/) {
   print "'sometimes Case' matched.\n";
}
