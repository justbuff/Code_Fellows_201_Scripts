# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Justin Buffington
# Date of latest revision: 8/9/2022
# Purpose: Creates a file that holds command contents

# Main

function network_report {
    $create_report = ipconfig /all > "network_report.txt"
    Select-String -Path "network_report.txt" -Pattern "IPv4 Address"
}

network_report
Pause
Remove-Item -Path "network_report.txt"

# End