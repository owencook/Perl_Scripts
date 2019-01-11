#!/bin/sh


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
#									  *
#   Change 0-9a-zA-Z to 0-9 if you just want digits etc.                  *
#   /dev/[your random device] requires root to operate                    *
#                                                                         *
#**************************************************************************

if [ -e ./code ];
then
  rm ./code
fi

for j in 1 2 3 4
do
  echo -e >> code
  
  for i in 1 2 3 4 5
  do
    if [ -e ./$i.txt ];
    then
      rm ./$i.txt
    fi
  done
  
  for i in 1 2 3 4 5
  do
    
    #	tr -c -d 0-9a-zA-Z < /dev/random | head -c  50 > 5r.txt
    tr -c -d 0-9a-zA-Z < /dev/chaoskey1 | head -c  50 > ./$i.txt
    
    sed  's/\(.....\)/\1 /g' ./$i.txt >> code
    echo -e  >> code
  done
  
  
done
