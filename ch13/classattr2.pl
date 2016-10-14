#!/usr/bin/perl
# classattr2.pl

use warnings;
use strict;
use Person6;

print "In the beginning: ", Person6->headcount(), "\n";
my $object = Person6->new(
   lastname    => "Galilei",
   firstname   => "Galileo",
   address     => "9.81 Pisa Apts.",
   occupation  => "bombadier"
);
print "Population now: ", Person6->headcount(), "\n";

my $object2 = Person6->new(
   lastname    => "Einstein",
   firstname   => "Albert",
   address     => "9E16, Relativity Drive",
   occupation  => "Plumber"
);
print "Population now: ", Person6->headcount(), "\n";

print "\nPeople we know:\n";
foreach my $person(Person6->everyone()) {
   print $person->firstname(), " ", $person->lastname(), "\n";
}
