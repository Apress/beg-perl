#!/usr/bin/perl
# showinstruments3.pl

use warnings;
use strict;
use DBI;

my($who, $instrument);

print "Enter name of musician and I will show you his/her instruments: ";
chomp($who = <STDIN>);

my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan", "CrimsonKing");

die "connect failed: " . DBI->errstr() unless $dbh;

# use a table join to query the instrument names
my $sth = $dbh->prepare("SELECT instrument
    FROM instruments
    JOIN what_they_play ON instruments.inst_id = what_they_play.inst_id
    JOIN musicians ON what_they_play.player_id = musicians.player_id
    WHERE musicians.name = ?")
             or die "prepare failed: " . $dbh->errstr();

$sth->execute($who) or die "execute failed: " . $sth->errstr();

# loop through them, printing them
while (($instrument) = $sth->fetchrow()) {
    print "    $instrument\n";
}

$sth->finish();

$dbh->disconnect();
