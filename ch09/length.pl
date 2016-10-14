#!/usr/bin/perl
# length.pl

use warnings;
use strict;

my $song = 'The Great Gig in the Sky';
print 'length of $song: ', length($song), "\n";
# the *real* length is 4:44

$_ = 'Us and Them';
print 'length of $_: ', length, "\n";
# this one is 7:40
