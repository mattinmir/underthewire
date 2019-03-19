# The password for Century13 is the description of the computer designated as a Domain Controller within this domain PLUS the name of the file on the desktop. 

# NOTE:
# - The password will be lowercase no matter how it appears on the screen. 
# - If the description "today_is" and the file on the desktop is named "_cool", the password would be "today_is_cool".

. .\connect.ps1

Connect "Century12" "secret_sauce"

$dc = Get-ADDomainController | Select-Object Name -ExpandProperty Name
$desc = Get-ADComputer $dc -properties description | Select-Object description -ExpandProperty description

$filename = ls C:\users\century12\desktop\ | Select Name -ExpandProperty Name

"$desc$filename".ToLower()

# i_authenticate_things