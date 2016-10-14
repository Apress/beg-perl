#!/usr/bin/perl
# whilefor.pl

use warnings;
use strict;

my @names = qw(John Joe Mary Sue);

print "processing using a while loop:\n";

my $i = 0;
while ($i <= $#names) {
    print "     Hello $names[$i]!\n";
    $i++;
}

print "processing using a for loop:\n";

for (my $i = 0; $i <= $#names; $i++) {
    print "     Hello $names[$i]!\n";
}
