#!/usr/bin/perl
# chap05ex3.pl

use warnings;
use strict;

my %jokes = (
    Java   => "None. Change it once, and it's the same everywhere.",
    Python => "One. He just stands below the socket and the world " .
              "revolves around him.",
    Perl   => "A million. One to change it, the rest to try and do it in " .
              "fewer lines.",
    C      => '"CHANGE?!!"'
);

print "enter programming language: ";
while (<STDIN>) {
    chomp;
    if (exists $jokes{$_}) {
        print "How many $_ programmers does it take to change a lightbulb?\n";
        sleep 2;
        print $jokes{$_}, "\n";
    } else {
        print "That language is not funny...\n";
    }
    print "enter programming language: ";
}
