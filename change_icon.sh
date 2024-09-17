#!/bin/bash

current_hour=$(date +"%H")  #00-23
current_minute=$(date +"%M")  #00-59

if [ $current_hour -ge 0 ] && [ $current_hour -lt 4 ]; then
    subdirectory="1"
elif [ $current_hour -ge 4 ] && [ $current_hour -lt 8 ]; then
    subdirectory="2"
elif [ $current_hour -ge 8 ] && [ $current_hour -lt 16 ]; then
    subdirectory="3"
elif [ $current_hour -ge 12 ] && [ $current_hour -lt 16 ]; then
    subdirectory="1"
elif [ $current_hour -ge 16 ] && [ $current_hour -lt 20 ]; then
    subdirectory="2"
elif [ $current_hour -ge 20 ] && [ $current_hour -lt 24 ]; then
    subdirectory="3"
else
    subdirectory="1"
fi

fileicon set ~/Desktop/docs ~/repos/autoBG/icons/$subdirectory/1.png
fileicon set ~/Desktop/photo ~/repos/autoBG/icons/$subdirectory/2.png
fileicon set ~/Desktop/bu ~/repos/autoBG/icons/$subdirectory/3.png
fileicon set ~/Desktop/ridoot ~/repos/autoBG/icons/$subdirectory/4.png
fileicon set ~/Desktop/other ~/repos/autoBG/icons/$subdirectory/5.png
fileicon set ~/Desktop/clean ~/repos/autoBG/icons/$subdirectory/6.png
fileicon set ~/Desktop/jobs ~/repos/autoBG/icons/$subdirectory/7.png