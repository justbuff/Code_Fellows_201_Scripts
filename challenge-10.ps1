# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort -Descending CPU

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort -Descending Id

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort -Descending WS | Select -First 5

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
[system.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
$url = @("https://owasp.org/www-project-top-ten/")
for($i = 1; $i -le 10; $1++){
    Start-Process iexplore.exe $url
}

# Close all Internet Explorer windows.
Get-Process iexplore | stop-process

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge. (Notepad)
taskkill /pid 15720