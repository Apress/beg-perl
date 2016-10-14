#!/usr/bin/perl
# chap07ex3.pl

use warnings;
use strict;

while (<>) {
    print if /[aeiouy][aeiouy]/i;
}
