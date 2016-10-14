#!/usr/bin/perl
# system.pl

use warnings;
use strict;

my $error_status = system 'date';

print "system() returned: $error_status\n";
