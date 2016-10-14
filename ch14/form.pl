#!/usr/bin/perl
# form.pl

use warnings;
use strict;
use CGI ':standard';

my @params    = param();
my $firstname = param('firstname') || 'you have no first name!';
my $lastname  = param('lastname')  || 'you have no last name!';

print
    header(),
    start_html(
        -title   => 'Welcome!',
        -text    => '#520063'
    ),
    h1("Hello, $firstname $lastname!"),
    end_html();
