#check all servers for TLS and SSL Versions and output them to console
$servers = Get-ADComputer -Filter 'operatingsystem -like "*server*" -and enabled -eq "true"'
$scriptblock = {
function get-tlsversions {

Write-Output "------------------------------"
Write-Output "Computername: $env:COMPUTERNAME"
Write-Output "Domain: $env:USERDNSDOMAIN"
Write-Output "Time: $(Get-Date -Format "dd.MM.yyyy | HH:mm")"
Write-Output "------------------------------"

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: TLS 1.2 enabled"
} else {
Write-Output "Client: TLS 1.2 disabled"
}
}
Catch{
Write-Output "Client: TLS 1.2 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Server: TLS 1.2 enabled"
} else {
Write-Output "Server: TLS 1.2 disabled"
}
}
Catch{
Write-Output "Server: TLS 1.2 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: TLS 1.1 enabled"
} else {
Write-Output "Client: TLS 1.1 disabled"
}
}
Catch{
Write-Output "Client: TLS 1.1 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Server: TLS 1.1 enabled"
} else {
Write-Output "Server: TLS 1.1 disabled"
}
}
Catch{
Write-Output "Server: TLS 1.1 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: TLS 1.0 enabled"
} else {
Write-Output "Client: TLS 1.0 disabled"
}
}
Catch{
Write-Output "Client: TLS 1.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Server: TLS 1.0 enabled"
} else {
Write-Output "Server: TLS 1.0 disabled"
}
}
Catch{
Write-Output "Server: TLS 1.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: SSL 3.0 enabled"
} else {
Write-Output "Client: SSL 3.0 disabled"
}
}
Catch{
Write-Output "Client: SSL 3.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Server: SSL 3.0 enabled"
} else {
Write-Output "Server: SSL 3.0 disabled"
}
}
Catch{
Write-Output "Server: SSL 3.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: SSL 2.0 enabled"
} else {
Write-Output "Client: SSL 2.0 disabled"
}
}
Catch{
Write-Output "Client: SSL 2.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Server: SSL 2.0 enabled"
} else {
Write-Output "Server: SSL 2.0 disabled"
}
}
Catch{
Write-Output "Server: SSL 2.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: SSL 2.0 enabled"
} else {
Write-Output "Client: SSL 2.0 disabled"
}
}
Catch{
Write-Output "Client: SSL 2.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Server: SSL 2.0 enabled"
} else {
Write-Output "Server: SSL 2.0 disabled"
}
}
Catch{
Write-Output "Server: SSL 2.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\PCT 1.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: PCT 1.0 enabled"
} else {
Write-Output "Client: PCT 1.0 disabled"
}
}
Catch{
Write-Output "Client: PCT 1.0 undefined"
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\PCT 1.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Output "Client: PCT 1.0 enabled"
} else {
Write-Output "Server: PCT 1.0 disabled"
}
}
Catch{
Write-Output "Server: PCT 1.0 undefined"
}

Write-Output "------------------------------"
}
get-tlsversions
}
Invoke-Command -ComputerName $servers.DNSHostName -ScriptBlock $scriptblock
