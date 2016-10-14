#!/usr/bin/perl
# whereisit.pl

use warnings;
use strict;
use File::Spec::Functions;

foreach my $path (path()) {
    my $test = catfile($path, "sort");
    if (-e $test) {
        print "Yes, sort is in the $path directory.\n";
        exit;
    }
}
print "sort was not found here.\n";
