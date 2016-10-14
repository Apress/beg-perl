#!/usr/bin/perl
# benchtest2.pl

use warnings;
use strict;
use Benchmark;

my $howmany = 1000;
my $filename = "/usr/share/dict/words";

timethese($howmany, {
    line => q{
        my $file;
        open TEST, '<', "/usr/share/dict/words" or die $!;
        while (<TEST>) { $file .= $_ }
        close TEST;
    },
    slurp => q{
        my $file;
        local undef $/;
        open TEST, '<', "/usr/share/dict/words" or die $!;
        $file = <TEST>;
        close TEST;
    },
    join => q{
        my $file;
        open TEST, '<', "/usr/share/dict/words" or die $!;
        $file = join "", <TEST>;
        close TEST;
    }
});
