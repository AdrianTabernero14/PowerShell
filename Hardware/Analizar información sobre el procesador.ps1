#Información sobre el procesador
Get-WmiObject Win32_Processor
Get-WmiObject -query "select * from Win32_Processor"

#Información sobre la arquitectura
(Get-WmiObject Win32_Processor).caption

#Información sobre la organización
(Get-WmiObject Win32_Processor).name

#Información sobre la realización
((Get-WmiObject Win32_Processor).name).split("@")[1]

#Información sobre los procesadores
Get-WmiObject -Class Win32_Processor | Select -Property Name, Number*

#Número de cores
Get-WmiObject -Class Win32_Processor | Select-Object NumberOfCores
Get-WmiObject -query "select NumberOfCores from Win32_Processor"

#Carga del procesador
Get-WmiObject win32_processor | Select-Object LoadPercentage

#Ejercicios
#Información sobre el procesador
Get-WmiObject -class "Win32_Processor" | % {
    Write-Host "CPU ID: "
    Write-Host $_.DeviceID
    Write-Host "CPU Model: "
    Write-Host $_.Name
    Write-Host "CPU Cores: "
    Write-Host $_.NumberOfCores
    Write-Host "CPU Max Speed: "
    Write-Host $_.MaxClockSpeed
    Write-Host "CPU Status: "
    Write-Host $_.Status
    Write-Host
}

¿El procesador es Intel?
if((Get-WmiObject Win32_Processor).Caption -match "Intel"){"Intel"}else{"No es Intel"}
