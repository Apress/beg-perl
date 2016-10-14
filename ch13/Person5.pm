package Person5;
# Person5.pm

# Class for storing data about a person

use strict;

my $Population = 0;

sub new {
   my $class = shift;
   my $self = {@_};
   bless $self, $class;
   $Population++;
   return $self;
}

# Object accessor methods
sub address   { $_[0]->{address  } = $_[1] if defined $_[1]; $_[0]->{address  } }
sub lastname  { $_[0]->{lastname } = $_[1] if defined $_[1]; $_[0]->{lastname } }
sub firstname { $_[0]->{firstname} = $_[1] if defined $_[1]; $_[0]->{firstname} }
sub phone_no  { $_[0]->{phone_no } = $_[1] if defined $_[1]; $_[0]->{phone_no } }
sub occupation  {
   $_[0]->{occupation}=$_[1] if defined $_[1]; $_[0]->{occupation}
}

# Class accessor methods
sub headcount { return $Population; }

1;
