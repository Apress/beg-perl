#!/usr/bin/perl
# goodopen.pl

use warnings;
use strict;

open(FH, '<', 'goodopen.dat') or die $!;

print "goodopen.dat opened successfully\n";

close FH;
