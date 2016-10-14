#!/usr/bin/perl
# musicians.pl

use warnings;
use strict;
use CGI ':standard';
use DBI;

if (param()) {
    # we have parameters, go grab the musicians
    # name
    my $musician = param('musician') || '';

    if (param('Show phone number')) {
        # the user wants to see the musician's phone number
        # print first part of HTML
        print
            header(),
            start_html("Phone Number for $musician"),
            h1("Phone Number for $musician");

        # query the database and get the phone number
        my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan",
                              "CrimsonKing");
        my $sth = $dbh->prepare("SELECT phone FROM musicians
                                     WHERE name = ?")
                     or die "prepare failed: " . $dbh->errstr();

        $sth->execute($musician) or die "execute failed: " . $sth->errstr();

        my($phone);

        ($phone) = $sth->fetchrow();

        # print number and end HTML
        print
            "Call $musician at $phone.",
            end_html;
} elsif (param('Show instruments')) {
        # the user wants to see the instruments the musician
        # plays, start the HTML
        print
            header(),
            start_html("Instruments played by $musician"),
            h1("Instruments played by $musician"),
            "$musician plays:",
            '<ul>';

        # query the database with a table join and retrieve the
        # instruments played by musician
        my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan",
                              "CrimsonKing");
        my $sth = $dbh->prepare("SELECT instrument
            FROM instruments
            JOIN what_they_play ON instruments.inst_id = what_they_play.inst_id
            JOIN musicians ON what_they_play.player_id = musicians.player_id
            WHERE musicians.name = ?")
                     or die "prepare failed: " . $dbh->errstr();

        $sth->execute($musician) or die "execute failed: " . $sth->errstr();

        my($instrument);

        # print all the instruments in a bullet list
        while (($instrument) = $sth->fetchrow()) {
            print "<li>$instrument</li>";
        }

        # finish the HTML
        print
            '</ul>',
            end_html;
    }

} else {
    # no data was posted, so print the initial form to the user
    # allowing to select the musician and whether they want
    # to see the phone number or the instruments
    print
        header(),
        start_html('My Favorite Musicians'),
        h1('Select a Musician'),
        start_form(),
        '<select name="musician">';

    # grab all the musician's names out of the database
    my $dbh = DBI->connect("DBI:mysql:musicians_db", "musicfan", "CrimsonKing");
    my $sth = $dbh->prepare("SELECT name FROM musicians")
                 or die "prepare failed: " . $dbh->errstr();

    $sth->execute() or die "execute failed: " . $sth->errstr();

    my($name);

    # loop through each row of data, printing it as an option
    # in the select widget
    while (($name) = $sth->fetchrow()) {
        print qq{<option value="$name">$name</option>};
    }

    # finish the select widget, print the submit buttons
    # and end the HTML
    print
        '</select>',
        br(),
        submit('Show phone number'),
        submit('Show instruments'),
        end_form(),
        end_html();
}
