#!/usr/bin/perl
# tr.pl

use warnings;

while (<>) {
    tr/a-z/A-Z/;
    print;
}
