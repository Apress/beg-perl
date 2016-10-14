#!/usr/bin/perl
# chap06ex2.pl

use warnings;
use strict;

print "enter a number: ";
chomp(my $input_num = <STDIN>);
if ($input_num < 0) {
    print "please enter a positive number!\n";
} else {
    my $result = factorial_recursive($input_num);
    print "$input_num! = $result\n";
}

# here is the solution using recursion -
# a recursive function is a function that calls
# itself
sub factorial_recursive {
    my $num = shift;

    if ($num == 0) {
        return 1;
    } else {
        return $num * factorial_recursive($num - 1);
    }
}
