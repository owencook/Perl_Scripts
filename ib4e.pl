#!/usr/bin/perl

use strict;

while (<DATA>) {
    chomp;
    if   ( $_ =~ /(?<=c)ei/ ) { print "$_ matches \n"; }
    else                      { print "$_ does not match \n"; }

}

__DATA__
receive   correct spelling
recieve
believe
beleive
