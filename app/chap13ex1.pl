#!/usr/bin/perl
# chap13ex1.pl

use warnings;
use strict;
use Person8;

my $object1 = Person8->new(
   lastname    => "Galilei",
   firstname   => "Galileo",
   address     => "9.81 Pisa Apts.",
   occupation  => "bombadier",
   phone_no    => "312.555.1212"
);

my $object2 = Person8->new(
   lastname    => "Wall",
   firstname   => "Larry",
   address     => "123 Perl Ave.",
   occupation  => "Programmer",
   phone_no    => "312.555.2323"
);

my $object3 = Person8->new(
   lastname    => "Torvalds",
   firstname   => "Linus",
   address     => "593 Linux Ave.",
   occupation  => "Programmer",
   phone_no    => "312.555.3434"
);

print "There are ", Person8->headcount(), " Person8 objects\n";

foreach my $person (Person8->everyone()) {
    print "\n", '-' x 80, "\n";
    $person->printletter("You owe me money. Please pay it.");
}
