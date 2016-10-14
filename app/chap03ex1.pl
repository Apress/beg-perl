#!/usr/bin/perl
# chap03ex1.pl

use warnings;
use strict;

my $target = 12;
print "Guess my number!\n";
print "Enter your guess: ";

my $guess;
while ($guess = <STDIN>) {
    if ($target == $guess) {
        print "That's it! You guessed correctly!\n";
        last;
    } elsif ($guess > $target) {
        print "Your number is more than my number\n";
    } elsif ($guess < $target) {
        print "Your number is less than my number\n";
    }
    print "Enter your guess: ";
}
