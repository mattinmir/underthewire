# The password for Century3 is the name of the built-in cmdlet that performs the wget like function within PowerShell PLUS the name of the file on the desktop. 

# NOTE:
# - If the name of the cmdlet is "get-web" and the file on the desktop is named "1234", the password would be "get-web1234".
# - The password will be lowercase no matter how it appears on the screen. 

$filename = Get-ChildItem -Path C:\users\century2\desktop | Select-Object Name -ExpandProperty Name

"invoke-webrequest$filename"

# invoke-webrequest443