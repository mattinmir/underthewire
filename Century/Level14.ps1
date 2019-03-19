# The password for Century15 is the number of times the word "polo" appears within the file on the desktop 

. .\connect.ps1

Connect "Century14" "755"

(Get-Content C:\users\century14\Desktop\countpolos).split(" ") | Where {$_ -eq "polo"} | Measure-Object | Select Count -ExpandProperty Count

# 153