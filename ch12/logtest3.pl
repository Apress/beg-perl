#!/usr/bin/perl
# logtest3.pl

use warnings;
use strict;
use Acme::Webserver::LoggerExporter;

open_log("webserver.log");

# this will go to the log file
write_log(1, "A basic message");

# this won't - the level is too high
write_log(10, "A debugging message");

# set the level so the debugging message will end up
# in the log file
log_level(10);
write_log(10, "Another debugging message");

close_log();
