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


