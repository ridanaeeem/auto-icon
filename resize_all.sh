#!/bin/bash

for file in icons/$1/*.png; do
    python3 resize.py $file
done

# example: ./resize_all.sh zoo