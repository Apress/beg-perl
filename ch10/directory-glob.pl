#!/usr/bin/perl
# directory-­glob.pl

use warnings;
use strict;

print "Contents of the current directory:\n";
foreach (glob('*')) {
    next if $_ eq "." or $_ eq "..";
    print $_, " " x (30 - length($_));
    print "d" if -d $_;
    print "r" if -r _;
    print "w" if -w _;
    print "x" if -x _;
    print "o" if -o _;
    print "\t";
    print -s _ if -r _ and -f _;
    print "\n";
}
