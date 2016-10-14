package Person3;

# Person3.pm

# Class for storing data about a person

use strict;

sub new {
   my $class = shift;
   my $self = {@_};
   bless $self, $class;
   return $self;
}

1;
