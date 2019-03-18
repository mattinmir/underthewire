# The password for Century6 is the short name of the domain in which this system resides in PLUS the name of the file on the desktop. 

# NOTE:
# - If the short name of the domain is "blob" and the file on the desktop is named "1234", the password would be "blob1234".
# - The password will be lowercase no matter how it appears on the screen. 

Get-ADDomain | Select Name -ExpandProperty Name