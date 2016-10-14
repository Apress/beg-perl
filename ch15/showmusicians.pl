#!/usr/bin/perl
# showmusicians.pl

use warnings;
use strict;
use DBI;

my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan", "CrimsonKing");

die "connect failed: " . DBI->errstr() unless $dbh;

# prepare the query to get the data out
# of the musicians table
my $sth = $dbh->prepare("SELECT player_id,name,phone FROM musicians")
             or die "prepare failed: " . $dbh->errstr();

$sth->execute() or die "execute failed: " . $sth->errstr();

my($player_id, $name, $phone);

# loop through each row of data, printing it
while (($player_id, $name, $phone) = $sth->fetchrow()) {
    print "$player_id : $name : $phone\n";
}

$sth->finish();

$dbh->disconnect();
