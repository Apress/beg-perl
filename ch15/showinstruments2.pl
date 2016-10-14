#!/usr/bin/perl
# showinstruments2.pl

use warnings;
use strict;
use DBI;

my($who, $player_id, $inst_id);

print "Enter name of musician and I will show you his/her instruments: ";
chomp($who = <STDIN>);

my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan", "CrimsonKing");

die "connect failed: " . DBI->errstr() unless $dbh;

# first, grab the musicians player_id
my $sth = $dbh->prepare("SELECT player_id FROM musicians WHERE name = ?")
             or die "prepare failed: " . $dbh->errstr();

$sth->execute($who) or die "execute failed: " . $sth->errstr();

($player_id) = $sth->fetchrow();

die "player_id not found" unless defined $player_id;

# given the player_id, grab their inst_ids from what_they_play
$sth = $dbh->prepare("SELECT inst_id FROM what_they_play
                             WHERE player_id = ?")
             or die "prepare failed: " . $dbh->errstr();

$sth->execute($player_id) or die "execute failed: " . $sth->errstr();

# foreach inst_id, grab the instrument name from the
# instruments table and print it
while (($inst_id) = $sth->fetchrow()) {
    my $sth = $dbh->prepare("SELECT instrument FROM instruments
                                    WHERE inst_id = ?")
             or die "prepare failed: " . $dbh->errstr();

    $sth->execute($inst_id) or die "execute failed: " . $sth->errstr();

    my($instrument) = $sth->fetchrow();
    print "    $instrument\n";

    $sth->finish();
}

$sth->finish();

$dbh->disconnect();
