#!/usr/bin/perl
# dynamic.pl

use warnings;
use strict;
use CGI ':standard';

if (param()) {
    # we have parameters, so process the form data

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

} else {
    # no parameters, so build the form

    print
        header(),
        start_html('A Simple Form'),
        h1('Please Enter Your Name'),
        start_form(),
        'First name: ',
        textfield(-name => 'firstname'),
        br(),
        'Last name: ',
        textfield(-name => 'lastname'),
        br(),
        submit(),
        end_form(),
        end_html();
}
