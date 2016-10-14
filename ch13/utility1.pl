#!/usr/bin/perl
# utility1.pl

use warnings;
use strict;
use Person8;

my $object = Person8->new(
   lastname    => "Galilei",
   firstname   => "Galileo",
   address     => "9.81 Pisa Apts.",
   occupation  => "bombadier"
);
$object->printletter("You owe me money. Please pay it.");
