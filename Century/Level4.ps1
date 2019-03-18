# The password for Century5 is the name of the file within a directory on the desktop that has spaces in its name. 

# NOTE:
# - The password will be lowercase no matter how it appears on the screen. 

$directory = ls C:\users\century4\desktop | Where {$_.name.contains(" ")} | Select Name -ExpandProperty Name
ls C:\users\century4\desktop\$directory | Select Name -ExpandProperty Name


# 61580