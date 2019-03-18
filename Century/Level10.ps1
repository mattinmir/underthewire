# The password for Century11 is the 10th and 8th word of the Windows Update service description combined PLUS the name of the file on the desktop. 

# NOTE:
# - The password will be lowercase no matter how it appears on the screen. 
# - If the 10th and 8th word of the service description is "apple" and "juice" and the name of the file on the desktop is "88", the password would be "applejuice88".

. .\connect.ps1

Connect "Century10" "pierid"

$filename = ls C:\users\century10\desktop\ | Select Name -ExpandProperty Name
$desc = (get-wmiobject win32_service | Where {$_.name -eq 'wuauserv'} | select description -ExpandProperty description).split(" ")

"$($desc[9])$($desc[7])$filename"

# windowsupdates110