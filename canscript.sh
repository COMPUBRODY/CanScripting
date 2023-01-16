#!/bin/bash


V1=10
V2=10
V3=30
V4=FF
V5=DEAD
x=1

while [ $x -le 50 ]
do

    cansend vcan0 123#"$V1$V2$V3$V4$V5"
    echo "cansend $x times"
    x=$(( $x + 1 ))
    sleep 5

done
