#!/usr/bin/perl
# nl2.pl

use warnings;
use strict;

my $lineno = 1;

while (<>) {
    print $lineno++;
    print ": $_";
}
