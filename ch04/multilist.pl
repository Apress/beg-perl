#!/usr/bin/perl
# multilist.pl

use warnings;
use strict;

my $mone; 
my $mtwo;
($mone, $mtwo) = (1, 3);

print(("heads ", "shoulders ", "knees ", "toes ")[$mone, $mtwo]);
print "\n";
