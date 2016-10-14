#!/usr/bin/perl
# os.pl

use warnings;
use strict;

# first prompt the user for a directory name and attempt
# to create the directory in the current directory
print "please enter a directory name: ";
chomp(my $dir = <STDIN>);

mkdir $dir, 0777 or die "failed to make directory $dir: $!\n";
print "made the directory $dir ok!\n";

# so far so good - now, change directory into the
# directory
chdir $dir or die "failed to change into $dir: $!\n";
print "changed into $dir ok!\n";

# ok, now move the file ../a.dat into this new directory
# giving it a new name
print "enter new file name: ";
chomp(my $newname = <STDIN>);
rename "../a.dat", $newname or die "rename failed: $!\n";
print "file moved successfully!\n";

# list the contents of the directory
# using a directory handle
print "contents of the new directory:\n";
opendir DH, '.' or die "opendir failed: $!";
my $filename;
while ($filename = readdir(DH)) {
    print "    $filename\n";
}
close DH;

# that's it, say goodbye
print "we are all done... goodbye!\n";
