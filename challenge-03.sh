#!/bin/bash/

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author: Justin Buffington
# Date of latest revision: 7/27/2022
# Purpose: Print the login history of users on this computer

# Main

function history {
    echo "History of logged in users"
    $1
    echo "Most recent login for all users"
    $2  
}

history last lastlog 

# End
