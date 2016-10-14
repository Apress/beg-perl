#!/usr/bin/perl
# webchess.pl

use warnings;
use strict;
use CGI ':standard';

my @chessboard = read_in_chessboard();

# grab the posted data, if any:
my $start = param('start') || '';
my $end   = param('end')   || '';

my $startx = '';
my $starty = '';
my $endx   = '';
my $endy   = '';

# time to make our move!
if ($start and $end) {
    if ($start =~ /^\s*([1-8]),([1-8])/) {
        $startx = $1 - 1;
        $starty = $2 - 1;
    }
    if ($end =~ /^\s*([1-8]),([1-8])/) {
        $endx = $1 - 1;
        $endy = $2 - 1;
    }
    if ($startx ne '' and $starty ne '' and
        $endx ne ''   and $endy ne '' ) {
        # put starting square on ending square
        $chessboard[$endy][$endx] = $chessboard[$starty][$startx];
        # remove from old square
        undef $chessboard[$starty][$startx];

        # we have changed the chessboard, so write
        # back out
        write_out_chessboard(@chessboard);
    }
}

# time to print to the browser
print
    header(),
    start_html('Web Chess'),
    h1('Web Chess');

# start the table that will contain the board
print '<table>';

# loop, printing each piece
foreach my $i (reverse (0..7)) { # row
    print '<tr>';
    foreach my $j (0..7) {       # column
        print '<td>';
        if (defined $chessboard[$i][$j]) {
            print $chessboard[$i][$j];
        } elsif ( ($i % 2) == ($j % 2) ) {
            print "..";
        }
        print '</td>';
    }
    print "</tr>";     # end of row
}

# we are done with our table
print '</table>';

# print a form for the next move
# and end the html
print
    hr(),
    start_form(),
    'Starting square [x,y]:',
    textfield(-name => 'start'),
    br(),
    'Ending square [x,y]:',
    textfield(-name => 'end'),
    br(),
    submit(),
    end_form(),
    end_html();

### function definitions ###

sub read_in_chessboard {
    # this function opens webchess.dat and builds
    # the chessboard
    # an example line from webchess.dat is:
    # BR:BN:BB:BQ:BK:BB:BN:BR

    # this is our local copy of the chessboard,
    # we'll return this later
    my @cb;
    open FH, '<', 'webchess.dat';

    foreach my $i (0..7) {
        my $line = <FH>;
        # split the line on a : or any whitespace
        # which will take care of the \n at the
        # end of the line
        my @linearray = split /[:\s]/, $line;
        # $#linearray should be 7!
        foreach my $j (0..$#linearray) {
            # if the text between the colons is
            # not the empty string, we have a piece,
            # so assign it to our chessboard
            if ($linearray[$j]) {
                $cb[$i][$j] = $linearray[$j];
            }
        }
    }
    close FH;

    # time to return back the chessboard
    return @cb;
}

sub write_out_chessboard {
    # the chessboard is passed in as our
    # argument
    my @cb = @_;

    # write the chessboard to webchess.dat
    # so that each piece on a row is colon separated
    open FH, '>', 'webchess.dat';
    foreach my $i (0..7) {
        foreach my $j (0..7) {
            if (defined $chessboard[$i][$j]) {
                print FH $chessboard[$i][$j];
            }
            if ($j < 7) {
                print FH ':';
            }
        }
        print FH "\n";
    }
}
