#!/usr/bin/perl

use strict;

#  /ab+c/ matches 'abc' or 'abbc' or 'abbbbbbc'.

while (<DATA>) {
chomp;
    if ( $_ =~ /ab+c/ ) {
        print "$_ pre is $`\t match is $& post is $'\n"; 

    }
    else { print "$_ does not match\n"; }
}

__DATA__
greabc56
plabbc67
snabbbb78
