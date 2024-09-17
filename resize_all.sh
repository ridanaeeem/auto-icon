#!/bin/bash

for file in icons/$1/*.png; do
    python3 resize.py $file
done

# example for /icons/2: ./resize_all.sh 2