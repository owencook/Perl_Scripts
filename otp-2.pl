#!/usr/bin/perl

my $count;
my $string;

# 

my $rng;
open my $RNGS, ">", "rngs.txt" or die "Can't open rngs.txt $!\n";
foreach my $l ( 0 .. 9 ) {  # Generate 10 lines of 55 random characters from the pool of '0 ..9' and 'a .. z'
    $rng = join '', map +( 0 .. 9, 'a' .. 'z' )[ rand( 10 + 26 ) ], 1 .. 50;
    print $RNGS "$rng\n";

}
close $RNGS;

open my $RNGS, "<", "rngs.txt" or die "Can't open rngs.txt $!\n";

while (<$RNGS>) { # now extract 10 blocks of 5 characters
    chomp;
    my $string = $_;

    foreach my $j (0, 5, 10, 15, 20, 25, 30, 35, 40, 45 ) {
        foreach my $l ( 0 .. 4 ) {
            my $char = substr( $string, $l + $j, 1 );
            print "$char";
        }
        print " ";
    }
    print "\n";
    $count++;

    #print "$count\n";
    if ( ( $count % 5 ) == 0 ) { print "\n"; } 
}
