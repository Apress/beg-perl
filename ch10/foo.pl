#!/usr/bin/perl
use warnings;
use strict;

print <*.pl>, "\n";
print glob('*.pl'), "\n";
while (my $f = glob('*.pl')) {
    print "file: $f\n";
}
