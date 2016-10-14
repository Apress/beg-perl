#!/usr/bin/perl
# chap09ex2.pl

use warnings;
use strict;

while (<>) {
    tr/a-zA-Z/n-za-mN-ZA-M/;
    print;
}
