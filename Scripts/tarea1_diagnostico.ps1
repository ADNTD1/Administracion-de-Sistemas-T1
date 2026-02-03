Write-Host "Maquina:"
Write-Host $env:COMPUTERNAME

Write-Host "Direccion IP:"
(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -notlike "127.*" -and $_.InterfaceOperationalStatus -eq "Up" } | Select-Object -First 1).IPAddress

Write-Host "Espacio del disco:"
$d = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"
Write-Host ([math]::Round($d.FreeSpace/1GB,0))"G libres de"([math]::Round($d.Size/1GB,0))"G"
