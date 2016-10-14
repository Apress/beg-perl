#!/usr/bin/perl
# data1.pl

use warnings;
use strict;
use Data::Dumper qw(Dumper);  # import the Dumper() function

# create a complex data type

my @a = (
    'hello, world',
    1234.56,
    [ 2, 4, 6 ],
    { one => 'first', two => 'second' }
);

# create a reference to it

my $r = \@a;

# dump it out
print Dumper($r);
