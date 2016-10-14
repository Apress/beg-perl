#!/usr/bin/perl
# whereis.pl

use warnings;
use strict;

my $prog = shift @ARGV;
die "usage: perl whereis.pl <file>" unless defined $prog;

my $found = 0;

foreach my $dir (split /:/, $ENV{PATH}) {
    if (-x "$dir/$prog") {
        print "$dir/$prog\n";
        $found = 1;
        last;
    }
}

print "$prog not found in PATH\n" unless $found;
