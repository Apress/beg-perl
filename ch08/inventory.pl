#!/usr/bin/perl
# inventory.pl

use warnings;
use strict;

my %inventory;
print "Enter individual items, followed by a new line.\n";
print "Enter a blank line to finish.\n";
while (<STDIN>) {
    chomp;
    last if $_ eq "";
    $inventory{lc $_}++;
}

open(SORT, '|-', 'perl sort2.pl');

while (my ($item, $quantity) = each %inventory) {
    if ($quantity > 1) {
        $item =~ s/^(\w+)\b/$1s/ unless $item =~ /^\w+s\b/;
    }
    print SORT "$item: $quantity\n";
}

close SORT;
