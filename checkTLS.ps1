#check all servers for TLS and SSL Versions and output them to console
$scriptblock = {
function get-tlsversions {

Write-Host "------------------------------"
Write-Host "Computername: $env:COMPUTERNAME"
Write-Host "Domain: $env:USERDNSDOMAIN"
Write-Host "Time: $(Get-Date -Format "dd.MM.yyyy | HH:mm")"
Write-Host "------------------------------"

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: TLS 1.2 enabled" -ForegroundColor Green
} else {
Write-Host "Client: TLS 1.2 disabled" -ForegroundColor Red
}
}
Catch{
Write-Host "Client: TLS 1.2 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Server: TLS 1.2 enabled" -ForegroundColor Green
} else {
Write-Host "Server: TLS 1.2 disabled" -ForegroundColor Red
}
}
Catch{
Write-Host "Server: TLS 1.2 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: TLS 1.1 enabled" -ForegroundColor Red
} else {
Write-Host "Client: TLS 1.1 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Client: TLS 1.1 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Server: TLS 1.1 enabled" -ForegroundColor Red
} else {
Write-Host "Server: TLS 1.1 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Server: TLS 1.1 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: TLS 1.0 enabled" -ForegroundColor Red
} else {
Write-Host "Client: TLS 1.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Client: TLS 1.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Server: TLS 1.0 enabled" -ForegroundColor Red
} else {
Write-Host "Server: TLS 1.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Server: TLS 1.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: SSL 3.0 enabled" -ForegroundColor Red
} else {
Write-Host "Client: SSL 3.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Client: SSL 3.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Server: SSL 3.0 enabled" -ForegroundColor Red
} else {
Write-Host "Server: SSL 3.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Server: SSL 3.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: SSL 2.0 enabled" -ForegroundColor Red
} else {
Write-Host "Client: SSL 2.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Client: SSL 2.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Server: SSL 2.0 enabled" -ForegroundColor Red
} else {
Write-Host "Server: SSL 2.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Server: SSL 2.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: SSL 2.0 enabled" -ForegroundColor Red
} else {
Write-Host "Client: SSL 2.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Client: SSL 2.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Server: SSL 2.0 enabled" -ForegroundColor Red
} else {
Write-Host "Server: SSL 2.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Server: SSL 2.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\PCT 1.0\Client" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: PCT 1.0 enabled" -ForegroundColor Red
} else {
Write-Host "Client: PCT 1.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Client: PCT 1.0 undefined" -ForegroundColor Yellow
}

Try{
If((get-itemproperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\PCT 1.0\Server" -Name "Enabled" -ErrorAction Stop).Enabled -ne 0) {
    Write-Host "Client: PCT 1.0 enabled" -ForegroundColor Red
} else {
Write-Host "Server: PCT 1.0 disabled" -ForegroundColor Green
}
}
Catch{
Write-Host "Server: PCT 1.0 undefined" -ForegroundColor Yellow
}

Write-Host "------------------------------"
}
get-tlsversions
}
try{
(Get-ADComputer -Filter 'operatingsystem -like "*server*" -and enabled -eq "true"').DNSHostname | foreach {Invoke-Command -ComputerName $_ -ScriptBlock $scriptblock -ErrorAction Stop}
}Catch{
Write-Host $_.Exception.Message -ForegroundColor Red
}
