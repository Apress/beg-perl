#!/usr/bin/perl
# badopen.pl

use warnings;
use strict;

open(FH, '<', 'badopen.dat') or die "We have a problem: $!";

print "Did we make it here?  Nope...\n";

close FH;
