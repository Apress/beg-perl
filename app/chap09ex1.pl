#!/usr/bin/perl
# chap09ex1.pl

use warnings;
use strict;

open(FH, '<', 'ex1.dat') or die $!;

while (<FH>) {
    my $name    = substr $_,  0, 24;
    my $address = substr $_, 25, 18;
    my $city    = substr $_, 52, 20;
    my $state   = substr $_, 72,  2;
    my $zip     = substr $_, 75,  5;


    print <<EOT;

Record:
name     : $name
address  : $address
city     : $city
state    : $state
zip      : $zip
EOT

}

close FH;
