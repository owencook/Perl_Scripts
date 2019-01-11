#!/usr/bin/perl

#**************************************************************************
#                                                                         *
#   This script will create four lots of 250 random characters, eg;       *
#									  *
#	EJC0y loM2R 2UTHT M8vUA dd7pF eIjrO No7Vf 16kSK wFFiI BCOeH 	  *
#	KPAjo RlbLU dmljI zxTxj A0bto AORou X9cd7 Xr0IF 9cd62 VWtFg 	  *
#	iPPin na4cO 5Ti4o hwOdY zMPTZ NlSwK 3tn24 RmP0O iWIjZ Q40UC       *
#	ZKajL PRy1Z Z06lZ XvRtN jfT4Y QG5AW S3z12 F61bg LQSd8 fcqhq 	  *
#	TJ0Rd PKF7N FUmnF 5hSlp H918P sAFDJ kvJji A7bk2 QEBeM uSj3s	  *
#									  *
#    from a large file of random characters, named r.txt                  *
#            								  *
#       tr -c -d 0-9a-zA-Z < /dev/random | head -c  5000 > r.txt          *
#                                                                         *
#**************************************************************************

use strict;

open my $RNG, "<", "../r.txt" or die "can't open ../r.txt$!\n";

my $rng = (<$RNG>);

close($RNG);

# substr EXPR,OFFSET,LENGTH

print "\n";
foreach my $j ( 0 .. 19 ) {
    foreach my $i ( 0 .. 9 ) {
        my $five = substr $rng, ( 5 * $i ) + ( $j * 50 ), 5;

        print "$five ";

    }

    print "\n";
    if ( ( $j + 1 ) % 5 == 0 ) { print "\n" }

}

print "\n";
