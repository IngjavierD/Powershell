#2. Renombra los ficheros JPG con fecha
Get-ChildItem *.jpg | ForEach-Object {
    $OldName = $_.Name
    $NewName = (Get-Date -Format 'yyyyMMdd') + '-' + $_.Name
    Write-Output "Nombre original: $OldName - Nuevo nombre: $NewName"
    Rename-Item -Path $_.FullName -NewName $NewName
}

