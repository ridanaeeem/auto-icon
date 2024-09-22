#!/bin/bash

current_hour=$(date +"%H")  #00-23
current_minute=$(date +"%M")  #00-59

if [ $current_hour -ge 0 ] && [ $current_hour -lt 2 ]; then
    subdirectory="1"
elif [ $current_hour -ge 2 ] && [ $current_hour -lt 4 ]; then
    subdirectory="2"
elif [ $current_hour -ge 4 ] && [ $current_hour -lt 6 ]; then
    subdirectory="3"
elif [ $current_hour -ge 6 ] && [ $current_hour -lt 8 ]; then
    subdirectory="4"
elif [ $current_hour -ge 8 ] && [ $current_hour -lt 10 ]; then
    subdirectory="5"
elif [ $current_hour -ge 10 ] && [ $current_hour -lt 12 ]; then
    subdirectory="1"
elif [ $current_hour -ge 12 ] && [ $current_hour -lt 14 ]; then
    subdirectory="1"
elif [ $current_hour -ge 14 ] && [ $current_hour -lt 16 ]; then
    subdirectory="2"
elif [ $current_hour -ge 16 ] && [ $current_hour -lt 18 ]; then
    subdirectory="3"
elif [ $current_hour -ge 18 ] && [ $current_hour -lt 20 ]; then
    subdirectory="4"
elif [ $current_hour -ge 20 ] && [ $current_hour -lt 22 ]; then
    subdirectory="5"
elif [ $current_hour -ge 22 ] && [ $current_hour -lt 24 ]; then
    subdirectory="1"
else
    subdirectory="1"
fi

/opt/homebrew/bin/fileicon set /Users/rida/Desktop/docs /Users/rida/repos/autoBG/icons/$subdirectory/1.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/photo /Users/rida/repos/autoBG/icons/$subdirectory/2.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/bu /Users/rida/repos/autoBG/icons/$subdirectory/3.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/ridoot /Users/rida/repos/autoBG/icons/$subdirectory/4.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/other /Users/rida/repos/autoBG/icons/$subdirectory/5.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/clean /Users/rida/repos/autoBG/icons/$subdirectory/6.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/jobs /Users/rida/repos/autoBG/icons/$subdirectory/7.png