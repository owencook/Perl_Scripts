#!/usr/bin/perl

use strict;

# Looking for digits only

while (<DATA>) {
chomp;
    if ( $_ =~ /^[0-9]*$/ ) {
        print "$_ has digits only\n"; 

    }
    else { print "$_ does not match\n"; }
}

__DATA__
5677890
765558888
6666
abcde22
6abc23xcv4455
6abc23xcv445566
