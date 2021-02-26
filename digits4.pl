#!/usr/bin/perl

use strict;

# ? means a character or expression is optional, i.e. zero or one occurrences. 
# Example: /ab?c/ matches 'ac' and 'abc' but not 'abbc'.

while (<DATA>) {
chomp;
    if ( $_ =~ /ab?c/ ) {
        print "$_ pre is $`\t match is $& post is $'\n"; 

    }
    else { print "$_ does not match\n"; }
}

__DATA__
laced
abacus
567abc456
cabbcly
