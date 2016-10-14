#!/usr/bin/perl
# accessor1.pl

use warnings;
use strict;
use Person4;

my $object = Person4->new(
   lastname    => "Galilei",
   firstname   => "Galileo",
   address     => "9.81 Pisa Apts.",
   occupation  => "bombadier"
);

print "This person's last name: ", $object->lastname(), "\n";
