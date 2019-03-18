# The password for Century6 is the short name of the domain in which this system resides in PLUS the name of the file on the desktop. 

# NOTE:
# - If the short name of the domain is "blob" and the file on the desktop is named "1234", the password would be "blob1234".
# - The password will be lowercase no matter how it appears on the screen. 

. .\connect.ps1

Connect "Century5" "61580"

$filename = ls C:\users\century5\desktop\ | Select Name -ExpandProperty Name

"$(Get-ADDomain | Select Name -ExpandProperty Name)$filename"

# underthewire3347