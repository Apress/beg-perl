#!/usr/bin/perl
# chap06ex1.pl

use warnings;
use strict;

print "enter a number: ";
chomp(my $input_num = <STDIN>);
if ($input_num < 0) {
    print "please enter a positive number!\n";
} else {
    my $result = factorial($input_num);
    print "$input_num! = $result\n";
}

sub factorial {
    my $num = shift;

    if ($num == 0) {
        return 1;
    } else {
        my $answer = 1;
        foreach (2 .. $num) {
            $answer = $answer * $_;
        }
        return $answer;
    }
}

