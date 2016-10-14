#!/usr/bin/perl
# html2.pl

# this program generates HTML without the use
# of CGI.pm - this time with a here document

use warnings;
use strict;

print "Content-Type: text/html\n";
print "\n";

print <<EOHTML;
<html>
<head>
<title>Generating HTML</title>
</head>
<body>
<h1>Now Is:</h1>
<p>
The current date and time is:
EOHTML

print scalar(localtime);

print <<EOHTML;
</p>
<hr />
<h1>Our CGI Scripts</h1>
<p>
By the time this chapter is over, you will write all of
these scripts:
EOHTML

print "<br />$_\n" foreach <*.pl>;

print <<EOHTML;
</p>
<h1>Go Here For Excellent Books!</h1>
<p>
Check out the
<a href="http://www.apress.com/">Apress Home Page</a>.
</p>
</body>
</html>
EOHTML

