package Person8;
# Person8.pm

# Class for storing data about a person

use strict;

my @Everyone;

# Constructor and initialization
sub new {
   my $class = shift;
   my $self = {@_};
   bless $self, $class;
   $self->_init();
   return $self;
}

sub _init {
   my $self = shift;
   push @Everyone, $self;
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
sub headcount { return scalar @Everyone; }
sub everyone  { return @Everyone;        }

# Utility methods
sub fullname {
   my $self = shift;
   return $self->firstname() . " " . $self->lastname();
}

sub printletter {
   my $self      = shift;
   my $name      = $self->fullname();
   my $address   = $self->address();
   my $firstname = $self->firstname();
   my $body      = shift;
   my @date      = (localtime)[3,4,5];
   $date[1]++;      # Months start at 0! Add one to humanize!
   $date[2]+=1900;  # Add 1900 to get current year.
   my $date    = join "/", @date;

   print <<EOF;
$name
$address

$date

Dear $firstname,

$body

Yours faithfully,
EOF
   return $self;
}

1;

