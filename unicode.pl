#!/usr/bin/perl

use strict;
use utf8;

while (<DATA>) {

    if ( $_ =~ /[^\x00-\x7f]/ ) {
        binmode( STDOUT, ":utf8" );
        print "Unicode match\t $&\n";    # $& is the regex match

    }
    else { print "No match\n"; }
}

__DATA__
And now a µ gram of truth
goodasy an hi
£ is an english pound
