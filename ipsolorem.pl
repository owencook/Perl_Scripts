#!/usr/bin/perl

use Text::Lorem;
   
        my $text = Text::Lorem->new();
  
        # Generate a string of text with 5 words
        # $words = $text->words(5);
  
        # Generate a string of text with 2 sentences
        $sentences = $text->sentences(7);

print "$sentences\n";
