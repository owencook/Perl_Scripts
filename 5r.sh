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
#   /dev/urandom can be run as user                                       *
#   									  *
#**************************************************************************



if [ -e /dev/chaoskey1 ]
then
  RNG="/dev/chaoskey1"
else
  if [ -e /dev/chaoskey2 ]
  then
    RNG="/dev/chaoskey2"
  else
    RNG="/dev/urandom"
  fi
fi
# RNG="/dev/[your random device]"    # The above is for my setup


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
    
    tr -c -d 0-9A-Z < $RNG | head -c  50 > ./$i.txt
    #tr -c -d 0-9a-zA-Z < $RNG | head -c  50 > ./$i.txt    #Upper and Lower case plust digits 
    
    sed  's/\(.....\)/\1 /g' ./$i.txt >> code
    echo -e  >> code
  done
  currentuser=$(who | awk '{print $1}')
  cp code /home/owen/5rcode
  chown $currentuser:$currentuser /home/owen/5rcode
done
