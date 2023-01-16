#!/bin/bash

x=1
while [$x -le 50 ]; do

    cansend vcan0 123#00ffaadeadbeed
    echo "cansend $x times"
    x=$($x + 1)
    sleep 5

done
