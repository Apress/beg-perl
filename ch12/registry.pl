#!/usr/bin/perl
# registry.pl

use warnings;
use strict;
use Win32::TieRegistry (Delimiter => "/") ;

my $users = $Registry->{HKEY_CURRENT_USER/Software/Microsoft/Windows/CurrentVersion/};
my $tips = $users->{Explorer/Tips};

$tips->{/186} = "It's easy to use Perl as a Registry editor with the " .
                "Win32::TieRegistry module.";

delete $tips->{/186};
