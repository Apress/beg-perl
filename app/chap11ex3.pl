#!/usr/bin/perl
# chap11ex3.pl

use warnings;
use strict;

my %addressbook;

sub menu {
    print <<EOT;

Please make a choice:
    1  add an entry
    2  view an entry
    3  view all entries
    4  delete an entry
    5  exit

Your choice:
EOT
}

sub add_entry {
    print "Enter name: ";
    chomp(my $name = <STDIN>);
    if (exists $addressbook{$name}) {
        print "Name alread exists in the address book!\n";
    }
    print "Address:    ";
    chomp(my $address = <STDIN>);
    print "Phone:      ";
    chomp(my $phone = <STDIN>);
    $addressbook{$name} = {
        address => $address,
        phone   => $phone
    };
}

sub view_entry {
    print "Enter name to view: ";
    chomp(my $name = <STDIN>);
    if (exists $addressbook{$name}) {
        print "Address: $addressbook{$name}{address}\n";
        print "Phone:   $addressbook{$name}{phone}\n\n";
    } else {
        print "$name is not in address book!\n\n";
    }
}

sub view_all {
    foreach my $name (sort keys %addressbook) {
        print "Name:    $name\n";
        print "Address: $addressbook{$name}{address}\n";
        print "Phone:   $addressbook{$name}{phone}\n\n";
    }
}

sub delete_entry {
    print "Enter name to delete: ";
    chomp(my $name = <STDIN>);
    if (exists $addressbook{$name}) {
        delete $addressbook{$name};
    } else {
        print "$name is not in address book!\n\n";
    }
}

while (1) {
    menu();
    chomp(my $answer = <STDIN>);
    SWITCH: {
        $answer == 1 and add_entry(),    last SWITCH;
        $answer == 2 and view_entry(),   last SWITCH;
        $answer == 3 and view_all(),     last SWITCH;
        $answer == 4 and delete_entry(), last SWITCH;
        $answer == 5 and exit(0);
    }
}
