#!/usr/bin/perl
# cgi1.pl

# this program generates HTML with the use
# of CGI.pm

use warnings;
use strict;
use CGI ':standard';

print header();
print start_html('Generating HTML');
print h1('Now Is:');
print p('The current date and time is:', scalar(localtime));
print hr();
print h1('Our CGI Scripts');

my $file_listing = '';
$file_listing .= "<br />$_" foreach <*.pl>;

print p('By the time this chapter is over, you will write all of',
        'these scripts:', $file_listing);
print h1('Go Here For Excellent Books!');
print p('Check out the',
        a({ href => 'http://www.apress.com/' }, 'Apress Home Page'));
print end_html();
