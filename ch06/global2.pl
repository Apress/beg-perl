#!/usr/bin/perl
# global2.pl

use warnings;

$x = 10;

print "before: $x\n";
change_global();
print "after:  $x\n";

sub change_global {
    $x = 20;
    print "in change_global(): $x\n";
}
