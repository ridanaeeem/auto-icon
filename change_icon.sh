#!/bin/bash

current_hour=$(date +"%H")  #00-23
subdirectory=$(((current_hour % 12) + 1 ))

/opt/homebrew/bin/fileicon set /Users/rida/Desktop/docs /Users/rida/repos/autoBG/icons/$subdirectory/1.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/photo /Users/rida/repos/autoBG/icons/$subdirectory/2.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/bu /Users/rida/repos/autoBG/icons/$subdirectory/3.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/ridoot /Users/rida/repos/autoBG/icons/$subdirectory/4.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/other /Users/rida/repos/autoBG/icons/$subdirectory/5.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/clean /Users/rida/repos/autoBG/icons/$subdirectory/6.png
/opt/homebrew/bin/fileicon set /Users/rida/Desktop/jobs /Users/rida/repos/autoBG/icons/$subdirectory/7.png