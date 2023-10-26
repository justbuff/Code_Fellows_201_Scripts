#!/bin/bash/

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Justin Buffington
# Date of latest revision: 7/28/2022
# Purpose: Create 4 directories with a .txt file in each

# Main

function dir {
    mkdir "$1"
}

dir dir1
dir dir2
dir dir3
dir dir4

# mkdir ${dir|*|}

directories=(dir1 dir2 dir3 dir4)

for x in "${directories[@]}"
do  
touch ./dir1/file.txt 
touch ./dir2/file.txt
touch ./dir3/file.txt
touch ./dir4/file.txt
done

# End
