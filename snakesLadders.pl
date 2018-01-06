#!/usr/bin/perl

# This simulates a snakes(chutes) and ladder game. See Iterations_chart.png
# 20,000 iterations gives a good result when charted in LibreOffice Calc

use strict;

my %buckets;    # for counting the number of moves per game
my $iterations = 2000;    # 20000 gives best results
my $moves;                # A counter
my $new_position;         # The position on the board

my %snakes_ladders = (    # A hash of the linkage between snakes and ladders
    1  => "38",
    4  => "14",
    9  => "31",
    16 => "6",
    21 => "42",
    36 => "44",
    47 => "26",
    49 => "11",
    51 => "67",
    56 => "53",
    62 => "19",
    64 => "60",
    71 => "91",
    80 => "100",
    87 => "24",
    93 => "73",
    95 => "75",
    98 => "78",
);

for ( my $i = 0 ; $i < $iterations ; $i++ ) {    # Loop for number of iterations

    $moves        = 0;
    $new_position = 0;

    while ( $new_position < 100 ) {  # A single game loop, ends on a 100 or more
        $new_position = moving();

        sub moving {

            my $throw = int( rand(6) + 1 );

            $moves++;

            if ( exists $snakes_ladders{ $new_position + $throw } ) {
                return $snakes_ladders{ $new_position + $throw };
            }
            else { return $new_position + $throw }

        }

    }

    $buckets{$moves}++;
}

# Now for some output

my $comma = ',';
open my $RESULTS, ">", "results.txt" or die "Can't open results.txt $!\n";

foreach my $key ( sort { $a <=> $b } keys %buckets ) {    # Screen output
    print "$key\t$buckets{$key}\n";
}
foreach my $key ( sort { $a <=> $b } keys %buckets ) {    # to a csv file
    print $RESULTS "$key$comma$buckets{$key}\n";
}

__END__


