#!/usr/bin/perl
# chap07ex4.pl

use warnings;
use strict;

while (<>) {
    print if /^[^aeiouy]*[aeiouy][^aeiouy]*[aeiouy][^aeiouy]*$/i;
}
