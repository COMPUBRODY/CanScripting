#!/bin/bash

D1=01C
D2=00C
D3=00D
D4=046
D5=067
D6=011
D7=02F
V1=10
V2=10
V3=30
V4=FF
V5=DEAD
V6=BEEF

x=1

while [ $x -le 50 ]
do
	for i in $D1 $D2 $D3 $D4 $D5 $D6 $D7
	do
		cansend can0 "$i#$V1$V2$V3$V4$V5$V6"
    		echo " i = $i "
	done
	x=$(( $x +1 ))
	sleep 5

done
