#!/usr/bin/perl
# looplabel2.pl

use warnings;
use strict;

my $i = 1;

OUTER: while ($i <= 5) {
    my $j = 1;
    while ($j <= 5) {
        last OUTER if $j == 3;
        print "$i ** $j = ", $i ** $j, "\n";
        $j++;
    }
    $i++;
}
