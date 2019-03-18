# The password for Century8 is in a readme file somewhere within the contacts, desktop, documents, downloads, favorites, music, or videos folder in the user's profile. 

# NOTE:
# - The password will be lowercase no matter how it appears on the screen. 

. .\connect.ps1

Connect "Century7" "197"

ls C:\users\century7 -Include *readme* -recurse | Get-Content

# 7points