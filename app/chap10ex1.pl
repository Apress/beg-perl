#!/usr/bin/perl
# chap10ex1.pl

use warnings;
use strict;

my $dir  = shift || '';
my $size = shift || '';

die "usage: chap10ex1.pl <dir> <size>\n" unless $dir and $size;

chdir $dir or die "can't chdir: $!";

# first, a file glob
# this gets hidden files too
print "using glob:\n";
foreach (glob('.* *')) {
    if (-f $_ and -s _ >= $size) {
        print '    ', $_, ' ' x (30 - length($_)), -s _, "\n";
    }
}

# now using a directory handle
print "\n\nusing directory handle:\n";
opendir DH, '.' or die "opendir failed: $!";
while ($_ = readdir(DH)) {
    if (-f $_ and -s _ >= $size) {
        print '    ', $_, ' ' x (30 - length($_)), -s _, "\n";
    }
}
closedir DH;
