#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author: Justin Buffington
# Date of latest revision: 8/10/2022
# Purpose: Create a script that asks a user to type a domain, then displays information about the typed domain

# Main

echo "Enter a domain name for info"
read domain

function domain_info {
    whois $domain | dig $domain | host $domain | nslookup $domain | tee domaininfo.txt
}

domain_info
nano domaininfo.txt

# End
