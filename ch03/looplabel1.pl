#!/usr/bin/perl
# looplabel1.pl

use warnings;
use strict;

my $i = 1;

while ($i <= 5) {
    my $j = 1;
    while ($j <= 5) {
        last if $j == 3;
        print "$i ** $j = ", $i ** $j, "\n";
        $j++;
    }
    $i++;
}
