#1. Muestra los ficheros de más de 1KB
Get-ChildItem | Where-Object {$_.Length -gt 1KB}