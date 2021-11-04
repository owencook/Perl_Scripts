#!/usr/bin/perl

use utf8;
use strict;

my @matches;

while (<DATA>) {

    my $line = $_;
    next unless ( $line =~ /=/ );
    chomp $line;

    @matches = $line =~ /=(\w+)/g;

    foreach my $letter (@matches) {
        next if ( $letter =~ /"QUOTED"/ );
        next if ( $letter =~ /"UTF"/ );
        printf( "%c", hex($letter) );

    }
}

print "\n";

__DATA__
BEGIN:VMSG 
VERSION:1.1 
BEGIN:VCARD 
TEL:+61490000000 
END:VCARD 
BEGIN:VBODY 
X-BOX:INBOX 
X-READ:READ 
X-SIMID:0 
X-LOCKED:UNLOCKED 
X-TYPE:SMS 
Date:2016/04/06 09:13:21 
Subject;ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:=4F=6B=2E=20=53=74=61= 
=79=20=63=6F=6D=66=79=2E 
END:VBODY 
END:VMSG
