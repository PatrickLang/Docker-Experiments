while (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias *vEthernet* | ? PrefixOrigin -ne "Dhcp") {
    Write-Host Waiting for DHCP response...
    sleep 5
}
Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias *vEthernet*