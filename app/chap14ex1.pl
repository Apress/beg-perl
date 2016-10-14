#!/usr/bin/perl
# chap14ex1.pl

use warnings;
use strict;

use CGI ':standard';

print
    header(),
    start_html('Exercise 1');

if (param) {
    my $name    = param('name')    || '';
    my $address = param('address') || '';
    my $phone   = param('phone')   || '';

    print
        h1('Thanks for your information!'),
        'Thanks for entering the following information:',
        br(),
        $name,
        br(),
        $address,
        br(),
        $phone;

    open FH, '>>', '/tmp/ex1.dat';
    print FH '-' x 80, "\n$name\n$address\n$phone\n";
    close FH;
} else {
    print
        h1('Please enter some information'),
        start_form(),
        'Name: ',
        textfield(-name => 'name'),
        br(),
        'Address: ',
        textarea(-name => 'address', rows => 3),
        br(),
        'Phone number: ',
        textfield(-name => 'phone'),
        br(),
        submit(),
        end_form();
}

print
    end_html();
