#!/usr/bin/perl
# chap11ex2.pl

use warnings;
use strict;

my @chessboard;
my @back = qw(R N B Q K B N R);
foreach (0..7) {
    $chessboard[0]->[$_] = "W" . $back[$_]; # White Back Row
    $chessboard[1]->[$_] = "WP";            # White Pawns
    $chessboard[6]->[$_] = "BP";            # Black Pawns
    $chessboard[7]->[$_] = "B" . $back[$_]; # Black Back Row
}

while (1) {
   # Print board
    foreach my $i (reverse (0..7)) { # Row
        foreach my $j (0..7) {       # Column
            if (defined $chessboard[$i][$j]) {
                print $chessboard[$i][$j];
            } elsif ( ($i % 2) == ($j % 2) ) {
                print "..";
            } else {
                print "  ";
            }
            print " ";  # End of cell
        }
        print "\n";     # End of row
    }

    print "\nStarting square [x,y]: ";
    my $move = <>;
    last unless ($move =~ /^\s*([1-8]),([1-8])/);
    my $startx = $1-1; my $starty = $2-1;

    unless (defined $chessboard[$starty][$startx]) {
        print "There's nothing on that square!\n";
        next;
    }
    print "\nEnding square [x,y]: ";
    $move = <>;
    last unless ($move =~ /([1-8]),([1-8])/);
    my $endx = $1-1; my $endy = $2-1;

    if (defined $chessboard[$endy][$endx]) {
        # can't take your own piece
        if (substr($chessboard[$endy][$endx], 0, 1) eq
            substr($chessboard[$starty][$startx], 0, 1)) {
            print "\nyou can't take your own piece!\n\n";
            next;
        }
        # can't take a king
        if ($chessboard[$endy][$endx] =~ /K/) {
            print "\nyou can't take a king!\n\n";
            next;
        }
    }

    # Put starting square on ending square.
    $chessboard[$endy][$endx] = $chessboard[$starty][$startx];
    # Remove from old square
    undef $chessboard[$starty][$startx];
}
