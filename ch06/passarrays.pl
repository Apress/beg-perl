#!/usr/bin/perl
# passarrays.pl

use warnings;
use strict;

my(@nums1, @nums2);

@nums1 = (2, 4, 6);
@nums2 = (8, 10, 12);

process_arrays(@nums1, @nums2);

sub process_arrays {
    my(@a, @b) = @_;

    print "contents of \@a\n";
    print "[$_] " foreach @a;
    print "\n\n";

    print "contents of \@b\n";
    print "[$_] " foreach @b;
    print "\n";
}

