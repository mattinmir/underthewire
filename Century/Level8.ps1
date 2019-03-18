# The password for Century9 is the number of unique entries within the file on the desktop. 

. .\connect.ps1

Connect "Century8" "7points"

Get-Content -Path C:\users\century8\Desktop\unique.txt | Sort-object -uniq | Measure-Object | Select Count -ExpandProperty count 

# 696
