#!/usr/bin/perl
# env4.pl

use warnings;
use strict;

print "Content-Type: text/html\n";
print "\n";

print "<table border=\"1\">";
foreach (sort keys %ENV) {
    print "<tr><th>$_</th><td>$ENV{$_}</td>";
}
print "</table>";
