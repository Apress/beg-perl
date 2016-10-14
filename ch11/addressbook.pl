#!/usr/bin/perl
# addressbook.pl

use warnings;
use strict;

my %addressbook = (
    "Paddy Malone" => {
        address => "23 Blue Jay Way",
        phone   => "404-6599",
        friends => [ "Baba O'Reilly", "Mick Flaherty" ]
    },
    "Baba O'Reilly" => {
        address => "123 Main St.",
        phone   => "984-5912",
        friends => [ "Bob McDowell", "Mick Flaherty", "Andy Donahue" ]
    },
    "Mick Flaherty" => {
        address => "5983 2nd Ave.",
        phone   => "377-5885",
        friends => [ "Paddy Malone", "Timothy O'Leary" ]
    },
    "Bob McDowell" => {
        address => "6149 Oak St.",
        phone   => "299-3885",
        friends => [ "Andy Donahue", "Baba O'Reilly" ]
    },
    "Andy Donahue" => {
        address => "8712 Central St.",
        phone   => "598-2813",
        friends => [ "Jimmy Callahan", "Mick Flaherty" ]
    },
    "Timothy O'Leary" => {
        address => "3983 Green Bay Rd.",
        phone   => "944-3487",
        friends => [ "Bob McDowell", "Mick Flaherty", "Paddy Malone" ]
    },
    "Jimmy Callahan" => {
        address => "533 Ridge Rd.",
        phone   => "869-1298",
        friends => [ "Andy Donahue", "Baba O'Reilly", "Mick Flaherty" ]
    }
);


foreach my $who (keys %addressbook) {
    print "$who\n";
    print "Address:  ", $addressbook{$who}{address}, "\n";
    print "Phone no: ", $addressbook{$who}{phone},   "\n";
    my @friends = @{$addressbook{$who}{friends}};
    print "Friends:";
    foreach (@friends) {
        print "\t$_";
    }
    print "\n\n";
}

$, = "\t";           # Set output field separator for tabulated display
my %added_to_todo = ();
my @todo = ("Paddy Malone"); # Start point
$added_to_todo{"Paddy Malone"}++;
while (@todo) {
    my $who = shift @todo; # Get person from the end
    my @friends = @{$addressbook{$who}{friends}};
    print "$who has friends: ", @friends, "\n";
    foreach (@friends) {
        # Visit unless they're already visited
        unless (exists $added_to_todo{$_}) {
            push @todo, $_;
            $added_to_todo{$_}++;         # Mark them as seen.
        }
    }
}

