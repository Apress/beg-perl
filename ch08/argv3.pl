#!/usr/bin/perl
# argv3.pl

use warnings;
use strict;

@ARGV = qw(file1.dat file2.dat file3.dat);

while (<>) {
    print "text read from $ARGV: $_";
}
