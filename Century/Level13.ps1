# The password for Century14 is the number of words within the file on the desktop. 

. .\connect.ps1

Connect "Century13" "i_authenticate_things"

(Get-Content C:\users\century13\Desktop\countmywords).split(" ") | Measure-Object | Select-Object Count -ExpandProperty Count

# 755