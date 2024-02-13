# Menú de opciones
$opcion = Read-Host "Introduce una opcion (1-5)"
switch ($opcion) {
    1 {
        Write-Host "Listando los servicios arrancados:"
        Get-Service | Where-Object {$_.Status -eq "Running"}
    }
    2 {
        Write-Host "Mostrando la fecha del sistema:"
        Get-Date
    }
    3 {
        Write-Host "Ejecutando el Bloc de notas..."
        Start-Process notepad.exe
    }
    4 {
        Write-Host "Ejecutando la Calculadora..."
        Start-Process calc.exe
    }
    5 {
        Write-Host "Saliendo del menu."
        exit
    }
    default {
        Write-Host "Opcion invalida. Por favor, selecciona una opcion valida (1-5)."
    }
}
