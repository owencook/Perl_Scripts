#!/usr/bin/perl -w

# program to generate an alphabet table for use with a otp

use strict;

# my @alpha = 'A' .. 'Z' ;

my @alpha = qw/A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9/;

my $first = $alpha[0];
print "   @alpha\n\n";

my $n = scalar(@alpha);

foreach my $i ( 1 .. $n ) {

    my $first = $alpha[0];
    print "$first  @alpha\n";

    push( @alpha, shift @alpha );
}
