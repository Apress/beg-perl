#!/usr/bin/perl
# scalarcontext.pl

use warnings;
use strict;

my %person = (
    name  => 'John Doe',
    age   => 39,
    phone => '555-1212',
    city  => 'Chicago'
);

my $scalar = %person;

print "scalar context: $scalar\n";

if (%person) {
    print "%person has at least one key/value pair\n";
} else {
    print "%person is empty!\n";
}
