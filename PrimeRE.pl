#!/usr/bin/perl

use strict;

# perl -lne '(1x$_) =~ /^1?$|^(11+?)\1+$/ || print "$_ is prime"'


#while (<DATA>){
#print;
#chomp;
#if ($_ != /^1?$|^(11+?)\1+$/){print "$_ is Prime\n";}else{print "$_ is Not Prime\n"}
#}


if (4 != /^1?$|^(11+?)\1+$/){print "$_ is Prime\n";}else{print "$_ is Not Prime\n"}

__DATA__
2
3
4
5
6
7
8
9
11
12
13
