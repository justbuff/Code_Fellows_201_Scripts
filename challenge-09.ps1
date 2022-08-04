Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\justi\OneDrive\Desktop\last_24.txt

Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\justi\OneDrive\Desktop\errors.txt

Write-Output "System events with EventID 16"
pause
Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

Write-Output "Last 20 System events"
pause
Get-EventLog -LogName System -Newest 20

Write-Output "Sources of last 500 System events"
pause
Get-EventLog -LogName System -Newest 500 | Group-Object -Property Source | Format-Table -Wrap -AutoSize