#!/usr/bin/perl
# links.pl

use warnings;
use strict;

my $filetolink = 'links.pl';
my $linkname   = 'linktolinks.pl';

symlink($filetolink, $linkname) or die "link creation failed: $!";

print "link created ok!\n";

my $readlinkresult = readlink($linkname);
print "$linkname is a sym link to $readlinkresult\n";
