#!/usr/bin/perl
# logtest2.pl

use warnings;
use strict;
use Acme::Webserver::Logger;

Acme::Webserver::Logger::open_log("webserver.log");

# this will go to the log file
Acme::Webserver::Logger::write_log(1, "A basic message");

# this won't - the level is too high
Acme::Webserver::Logger::write_log(10, "A debugging message");

# set the level so the debugging message will end up
# in the log file
Acme::Webserver::Logger::log_level(10);
Acme::Webserver::Logger::write_log(10, "Another debugging message");

Acme::Webserver::Logger::close_log();
