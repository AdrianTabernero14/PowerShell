#Información sobre discos
Get-Disk

#Crear partición
New-Partition -DiskNumber 1 -UseMaximumSize -AssignDriveLetter

#Dar formato
Format-Volume -DriveLetter f

#Montar disco virtual
Mount-VHD –Path f:\disco.vhdx
