#!/usr/bin/perl
# chap15ex1.pl

use warnings;
use strict;
use DBI;

my($instrument, $musician);

print "Enter instrument: ";
chomp($instrument = <STDIN>);

my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan", "CrimsonKing");

die "connect failed: " . DBI->errstr() unless $dbh;

# use a table join to query the instrument names
my $sth = $dbh->prepare("SELECT musicians.name
    FROM musicians,what_they_play,instruments
    WHERE instruments.instrument = ? AND
        musicians.player_id = what_they_play.player_id AND
        what_they_play.inst_id = instruments.inst_id")
             or die "prepare failed: " . $dbh->errstr();

$sth->execute($instrument) or die "execute failed: " . $sth->errstr();

# loop through them, printing them
while (($musician) = $sth->fetchrow()) {
    print "    $musician\n";
}

$sth->finish();

$dbh->disconnect();
