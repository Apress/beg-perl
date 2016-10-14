#!/usr/bin/perl
# copy.pl

use warnings;
use strict;

my $source      = shift @ARGV;
my $destination = shift @ARGV;

open(IN, '<', $source)       or die "Can't read source file $source: $!\n";
open(OUT, '>', $destination) or die "Can't write to file $destination: $!\n";

print "Copying $source to $destination\n";

while (<IN>) {
   print OUT $_;
}

close IN;
close OUT;
