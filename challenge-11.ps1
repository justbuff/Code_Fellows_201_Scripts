# Script: Ops 201 Class 11 Ops Challenge Solution
# Author: Justin Buffington
# Date of latest revision: 8/8/2022
# Purpose: Prints varied command outputs

# Main

# Enables File and Printer sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True -Profile Any

# Allows ICMP traffic
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow

# Enables Remote management
Enable-PSRemoting

# Removes bloatware
Get-AppxPackage -AllUsers | Remove-AppxPackage

# Enables Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disables SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

# End
