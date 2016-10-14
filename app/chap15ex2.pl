#!/usr/bin/perl
# chap15ex2.pl

use warnings;
use strict;
use CGI ':standard';
use DBI;

if (param()) {
    my $instrument = param('instrument') || '';

    print
        header(),
        start_html("Musicians who play $instrument");
        h1("Musicians who play $instrument");

    my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan",
                          "CrimsonKing");
    my $sth = $dbh->prepare("SELECT name
                  FROM musicians, what_they_play, instruments
                  WHERE instruments.instrument = ? AND
                      instruments.inst_id = what_they_play.inst_id AND
                      what_they_play.player_id = musicians.player_id")
                 or die "prepare failed: " . $dbh->errstr();

    $sth->execute($instrument) or die "execute failed: " . $sth->errstr();

    my($name);

    while (($name) = $sth->fetchrow()) {
        print "$name plays the $instrument.<br>";
    }
    print
        end_html;
} else {
    print
        header(),
        start_html('My Favorite Instrument'),
        h1('Select an Instrument'),
        start_form(),
        '<select name="instrument">';

    my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan",
                          "CrimsonKing");
    my $sth = $dbh->prepare("SELECT instrument FROM instruments")
                 or die "prepare failed: " . $dbh->errstr();

    $sth->execute() or die "execute failed: " . $sth->errstr();

    my($instrument);

    while (($instrument) = $sth->fetchrow()) {
        print qq{<option value="$instrument">$instrument</option>};
    }

    print
        '</select>',
        br(),
        submit('Show musician(s)'),
        end_form(),
        end_html();
}
