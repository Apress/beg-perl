#!/usr/bin/perl
# colors.pl

use warnings;
use strict;

my %colors = (
   red    => '#FF0000',
   green  => '#00FF00',
   blue   => '#0000FF',
   white  => '#FFFFFF',
   black  => '#000000',
   purple => '#520063'
);

print "Red is:    $colors{red}\n";
print "Blue is:   $colors{blue}\n";
print "Purple is: $colors{purple}\n";
