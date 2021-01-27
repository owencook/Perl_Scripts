#!/usr/bin/perl

#          Name                   Nr    Coy   WIA Date      DOW Date      Barcode

# print $KIA_List "$name:$nr:$origcoy:$kiadate:$state:$barcode\n"
# NAME:   Number:Coy:Nr:KIA Date:State:Barcode
# Adams, Raymond Axford :3451:A: 5 Aug:TAS:3020973




format KIA =
@<<<<<<<<<<<<<<<<<<<<<<<<<<<< @>>>>>     @<<<< @<<<<<<<<<    @<<<<<<<<< 
$name, $nr, $coy, $KIA_Date, $state
.

format KIA_TOP =
          Name                    Nr    Coy   KIA Date      State 

.

open (KIA, ">","KIA.txt") or die "Can't open KIA.txt for writing $!\n"; 
open (WOUNDED,  "</home/owen/sqlite-work/KIA/KIA_List.txt") or die "Can't open that List $!\n";


while(<DATA>){
chomp;
my $line = $_;
if ($line =~/NAME:/){next}
($name, $nr, $coy, $KIA_Date, $state, $Barcode) = split /:/,$line;

write (KIA);

}


__DATA__
NAME:   Number:WIA Date:DOW Date:Barcode
Schroder, Alfred Gustav:192:A: 5 Aug:16 Aug:8075679
Craib, William Ogliston:252:A: 5 Aug: 6 Aug:3438582
Edwards, Albert Gordon:254:A: 5 Aug:10 Aug:1934061
Bolton, Royston :276:B:29 Jul:29 Jul:3097230
Cochrane, Percy William :290:B:29 Jul:29 Jul:3264187
Medhurst, Clarence John :606:A:29 Jul:29 Jul:8006767
Goldstraw, William Anthony :1088:D: 5 Aug: 5 Aug:4818286
Farrell, Roy Henry:1256:C: 5 Aug:20 Aug:3548960
Dixon, Stephen :1671:A: 5 Aug: 7 Aug:3509125
Kidd, William Nimmo:1941:B: 5 Aug: 7 Aug:7370230
Holmes, Leslie Leonard:2034:D:29 Jul:30 Jul:5822706
Boardman, Richard:2464:C:29 Jul:31 Jul:3095094
Herbert, William Ronald:2488:D:29 Jul: 2 Aug:5476551
Tolman, Owen Stanley:2511:C:29 Jul:10 Aug:8391986
Currie, Frederick:3474:B: 5 Aug: 7 Aug:3478400
Gates, Harold Joseph:3656:: 5 Aug: 6 Aug:4026762
Stratton, John William Yaxley:3694:D:30 Jul: 8 Aug:8095283
Bogie, James :3773:B: 3 Aug: 4 Aug:3096033
Walters, William Thomas:4351:: 5 Aug: 6 Aug:8361745
Barker, James :4380:C: 5 Aug: 5 Aug:3049316
Jordan, Ernest William:4438:B:29 Jul: 3 Aug:7361690
Kent, William Bertram:4443:: 5 Aug:14 Aug:7371360
Wagner, Stanley:4541:: 5 Aug: 6 Aug:8399456
Fraser, Gordon Burnett :4570:: 5 Aug: 5 Aug:4033699
