# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Where-Object { $_.CPU }

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process 

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

# Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

# Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.

# Close all Internet Explorer windows.

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.