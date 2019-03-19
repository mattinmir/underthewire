# The password for Century12 is the name of the hidden file within the contacts, desktop, documents, downloads, favorites, music, or videos folder in the user's profile. 

# NOTE:
# - Exclude "desktop.ini".
# - The password will be lowercase no matter how it appears on the screen. 

. .\connect.ps1

Connect "Century11" "windowsupdates110"

$folders = @("Contacts", "Desktop", "Documents", "Downloads", "Favorites", "Music", "Videos")

$folders | Foreach-Object {Get-ChildItem -Path "C:\users\century11\$_" -Recurse -hidden -ErrorAction SilentlyContinue} | Where-Object {$_.mode[0] -ne "d"} | Select-Object Name -ExpandProperty Name

# secret_sauce