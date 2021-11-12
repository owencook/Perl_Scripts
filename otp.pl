#!/usr/bin/perl -w

# program to generate an alphabet table for use with a otp

use strict;

my @alpha = 'A' .. 'Z';

my $first = $alpha[0];
print "   @alpha\n\n";

my $n = scalar(@alpha);

foreach my $i ( 1 .. $n ) {

    my $first = $alpha[0];
    print "$first  @alpha\n";

    push( @alpha, shift @alpha );

}

