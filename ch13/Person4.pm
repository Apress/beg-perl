package Person4;

# Person4.pm

# Class for storing data about a person

use strict;

sub new {
   my $class = shift;
   my $self = {@_};
   bless $self, $class;
   return $self;
}

sub lastname {
   my $self = shift;
   return $self->{lastname};
}

1;
