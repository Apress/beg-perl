#!/usr/bin/perl
# listcontext.pl

use warnings;
use strict;

my %person = (
    name  => 'John Doe',
    age   => 39,
    phone => '555-1212',
    city  => 'Chicago'
);

my @data = %person;

print "list context: ", join("|", @data), "\n";
print "another way: ", %person, "\n";
