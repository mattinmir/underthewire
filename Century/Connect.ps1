$webRequest = [Net.WebRequest]::Create("https://games.underthewire.tech:5986/wsman")
try { $webRequest.GetResponse() } catch {}
$cert = $webRequest.ServicePoint.Certificate
$store = New-Object System.Security.Cryptography.X509Certificates.X509Store -ArgumentList  "Root", "CurrentUser"
$store.Open('ReadWrite')
$store.Add($cert)
$store.Close()
Test-WSMan -ComputerName games.underthewire.tech -port 5986 -UseSSL

Enter-PSSession -ComputerName games.underthewire.tech -UseSSL -port 5986 -Credential (Get-Credential)