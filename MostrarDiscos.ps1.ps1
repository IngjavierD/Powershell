#3. Muestra discos con espacio libre por debajo de un umbral 
# Define el umbral de espacio libre en porcentaje
$umbralPorcentaje = 40

# Recupera la información de los discos del sistema
$discos = Get-WmiObject Win32_LogicalDisk

# Filtra los discos con espacio libre por debajo del umbral especificado
$discosBajoUmbral = $discos | Where-Object {($_.FreeSpace / $_.Size) * 100 -lt $umbralPorcentaje}

# Itera sobre los discos bajo el umbral y muestra la información requerida
$discosBajoUmbral | ForEach-Object {
    $letraUnidad = $_.DeviceID
    $espacioLibreGB = [math]::Round($_.FreeSpace / 1GB)
    $tamanoGB = [math]::Round($_.Size / 1GB)
    Write-Output "Disco: $letraUnidad - Espacio libre: $espacioLibreGB GB - Tamano total: $tamanoGB GB"
}
