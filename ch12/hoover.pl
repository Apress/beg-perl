#!/usr/bin/perl
# hoover.pl

use warnings;
use strict;
use File::Find;

find(\&cleanup, "/");

sub cleanup {
   # Not been accessed in six months?
   if (-A > 180) {
      print "Deleting old file $_\n";
      # uncomment the next line if you really want to delete files
      #unlink $_ or print "oops, couldn't delete $_: $!\n";
      return;
   }
   open FH, '<', $_ or warn "Couldn't open $_: $!\n";
   foreach (1..5) { # You've got five chances.
      my $line = <FH>;
      next unless defined $line;
      if ($line =~ /Perl|Camel|important/i) {
         # Spare it.
         return;
      }
   }
   print "Deleting unimportant file $_\n";
   # uncomment the next line if you really want to delete files
   #unlink $_ or print "oops, couldn't delete $_: $!\n";
}
