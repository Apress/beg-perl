#!/usr/bin/perl
# chap06ex3.pl

use warnings;
use strict;

my $number_of_seconds;

prompt_user();
my ($hours, $minutes, $seconds) = secs2hms($number_of_seconds);
print "$number_of_seconds seconds is $hours hours, $minutes ",
      "minutes and $seconds seconds";
print "\n";

sub prompt_user {
    print "please enter the number of seconds: ";
    chomp($number_of_seconds = <STDIN>);
}

sub secs2hms {
    my ($h,$m);
    my $seconds = shift;;    # defaults to shifting @_
    $h = int($seconds/(60*60));
    $seconds %= 60*60;
    $m = int($seconds/60);
    $seconds %= 60;
    ($h,$m,$seconds);
}

