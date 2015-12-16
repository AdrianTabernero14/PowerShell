#Mediante la utilización de funciones resolver las siguientes situaciones:
#Mostrar todos los procesos.
#Mostrar los X primeros procesos.
#Mostrar los X últimos procesos.
#Ordenar todos los procesos por CPU de forma descendente.
#Mostrar los X procesos cuyo consumo (el parámetro que quieras utilizar) sea mayor que el valor que quieras monitorizar.
#Agrupar los procesos y muestra los que sean XXXXX.

#Función para mostrar todos los procesos
function Procesos
{
Get-Process
}
Procesos

#Función para mostrar los X primeros procesos
function ProcesosPrimeros($numero)
{
Get-Process | Select-Object -First $numero
}
ProcesosPrimeros 5

#Función para mostrar los X últimos procesos
function ProcesosUltimos($numero)
{
Get-Process | Select-Object -Last $numero
}
ProcesosUltimos 5

#Función para ordenar todos los procesos por CPU de forma descendente
function ProcesosCPU
{
Get-Process | Sort-Object CPU -Descending
}
ProcesosCPU

#Función para mostrar los X procesos cuyo consumo (el parámetro que quieras utilizar) sea mayor que el valor que quieras monitorizar
function ProcesosConsumo([String]$parametro,[Int]$valor,[Int]$numerovalores)
{
$parametro
$valor
$numerovalores
Get-Process | Select-Object -First $numerovalores | Where-Object $parametro -GT $valor
}
ProcesosConsumo CPU 30 5

#Función para agrupa los procesos y muestra los que sean XXXXX
function ProcesoConcreto($nombreproceso)
{
Get-Process -Name $nombreproceso | Group-Object
}
ProcesoConcreto svchost
