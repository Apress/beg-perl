#!/usr/bin/perl
# logtest1.pl

use warnings;
use strict;
use Logger;

Logger::open_log("webserver.log");

# this will go to the log file
Logger::write_log(1, "A basic message");

# this won't - the level is too high
Logger::write_log(10, "A debugging message");

# set the level so the debugging message will end up
# in the log file
Logger::log_level(10);
Logger::write_log(10, "Another debugging message");

Logger::close_log();
