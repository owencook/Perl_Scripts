#!/usr/bin/perl

use strict;

while (<DATA>) {

    my $line = $_;

    if ( $line =~ / \d+[(?=\sUSD)|(?=USD)]/ ) { print "$line" }

}

__DATA__
no0w it is 234USD
it is USD only
now it is 2345 USD
it is 2345        USD
