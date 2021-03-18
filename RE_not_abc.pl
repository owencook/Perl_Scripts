#!/usr/bin/perl

use strict;


# Inside a character class, ^ means 'not'. For example, [^abc] matches any
# character except a, b, or c.

while (<DATA>) {
chomp;
    if ( $_ =~ /[^abc]/ ) {
        print "$_ pre is $`\t match is $& post is $'\n"; 

    }
    else { print "$_ does not match\n"; }
}

__DATA__
cat
cot
bot
dot

