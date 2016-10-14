#!/usr/bin/perl
# connect.pl

use warnings;
use strict;
use DBI;

my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan", "CrimsonKing");

die "connect failed: " . DBI->errstr() unless $dbh;

print "connect successful!\n";

$dbh->disconnect();
