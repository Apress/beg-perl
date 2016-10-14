#!/usr/bin/perl
# env2.pl

use warnings;
use strict;

print "Content-Type: text/plain\n";
print "\n";

foreach (sort keys %ENV) {
    print "$_ = $ENV{$_}\n";
}
