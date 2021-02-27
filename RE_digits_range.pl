#!/usr/bin/perl

use strict;

# A pair of numbers in curly braces specifies a range of repetitions. 
# For example, \d{2,5} matches from two to five digits
# Special variables $' $& and $`

while (<DATA>) {
chomp;
    if ( $_ =~ /\d{2,5}/ ) {
        print "$_ pre is $`\t match is $& post is $'\n"; 

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
