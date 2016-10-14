#!/usr/bin/perl
# env1.pl

use warnings;
use strict;

print "Content-Type: text/plain\n";
print "\n";

print "your hostname is:      $ENV{REMOTE_ADDR}\n";
print "your outbound port is: $ENV{REMOTE_PORT}\n";
print "your browser is:       $ENV{HTTP_USER_AGENT}\n";
