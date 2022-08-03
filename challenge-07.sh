#!/bin/bash/

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Justin Buffington
# Date of latest revision: 8/2/2022
# Purpose: Prints specific system info

# Main

sudo lshw -c processor -c memory -c display -c network | grep -E '*-cpu|*-memory|*-firmware|*-display|*-network|product:|vendor:|physical id:|bus info:|width:|description:|size:|clock:|capabilities:|configuration:|resources:|logical name:|version:|serial:|capacity:'

# End