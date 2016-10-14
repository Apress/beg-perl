#!/usr/bin/perl
# classattr1.pl

use warnings;
use strict;
use Person5;

print "In the beginning: ", Person5->headcount(), "\n";
my $object = Person5->new(
   lastname    => "Galilei",
   firstname   => "Galileo",
   address     => "9.81 Pisa Apts.",
   occupation  => "bombadier"
);
print "Population now: ", Person5->headcount(), "\n";

my $object2 = Person5->new(
   lastname    => "Einstein",
   firstname   => "Albert",
   address     => "9E16, Relativity Drive",
   occupation  => "Plumber"
);
print "Population now: ", Person5->headcount(), "\n";
