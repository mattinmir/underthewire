# The password for Century7 is the number of folders on the desktop. 

. .\connect.ps1

Connect "Century6" "underthewire3347"

ls C:\users\century6\desktop\ | Where {$_.attributes -contains "Directory"} | Measure-Object | select count -ExpandProperty count

# 197