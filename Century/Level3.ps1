# The password for Century4 is the number of files on the desktop. 

ls C:\users\century3\desktop | Measure-Object | select count -ExpandProperty count

# 123