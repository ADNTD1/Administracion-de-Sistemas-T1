Remove-NetIPAddress -InterfaceAlias "Ethernet1" -Confirm:$false -ErrorAction SilentlyContinue

New-NetIPAddress `
  -InterfaceAlias "Ethernet1" `
  -IPAddress 192.168.85.20 `
  -PrefixLength 24
