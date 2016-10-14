#!/usr/bin/perl
# html1.pl

# this program generates HTML without the use
# of CGI.pm

use warnings;
use strict;

print "Content-Type: text/html\n";
print "\n";
print "<html>\n";
print "<head>\n";
print "<title>Generating HTML</title>\n";
print "</head>\n";
print "<body>\n";
print "<h1>Now Is:</h1>\n";
print "<p>\n";
print "The current date and time is: ";

print scalar(localtime);

print "</p>\n";
print "<hr />\n";
print "<h1>Our CGI Scripts</h1>\n";
print "<p>\n";
print "By the time this chapter is over, you will write all of \n";
print "these scripts:\n";

print "<br />$_\n" foreach <*.pl>;

print "</p>\n";
print "<h1>Go Here For Excellent Books!</h1>\n";
print "<p>\n";
print "Check out the \n";
print "<a href=\"http://www.apress.com/\">Apress Home Page</a>.\n";
print "</p>\n";
print "</body>\n";
print "</html>\n";
