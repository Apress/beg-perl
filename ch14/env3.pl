#!/usr/bin/perl
# env3.pl

use warnings;
use strict;

print "Content-Type: text/html\n";
print "\n";

foreach (sort keys %ENV) {
    print "$_ = $ENV{$_}";
    print "<br />";
}
