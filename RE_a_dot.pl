#!/usr/bin/perl

use strict;

# A dot matches any single character. 
# For example, /r.de/ matches 'ride', 'rode' etc.

while (<DATA>) {
chomp;
    if ( $_ =~ /p.r/ ) {
        print "$_ pre is $`\t match is $& post is $'\n"; 

    }
    else { print "$_ does not match\n"; }
}

__DATA__
appropriate
pourous
parsec

