package Person2;
# Person2.pm

# Class for storing data about a person

use strict;

sub new {
   my $self = {};
   bless $self, "Person2";
   return $self;
}

1;
