# The password for Century10 is the 161st word within the file on the desktop. 

# NOTE:
# - The password will be lowercase no matter how it appears on the screen.

. .\connect.ps1

Connect "Century9" "696"

(Get-content -Path C:\users\Century9\Desktop\Word_File.txt).split(" ")[160]

# pierid