#!/usr/bin/perl
# my.pl

use warnings;

$x = 10;

print "before: $x\n";
change_global_not();
print "after:  $x\n";

sub change_global_not {
    my $x = 20;
    print "in change_global_not(): $x\n";
}
