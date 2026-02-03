# Tarea 1: Entorno de Virtualizacion e Infraestructura Base

En este repositorio se documenta la Tarea 1 de Administracion de Sistemas,
en la cual se implementa una red entre tres maquinas virtuales:
un servidor Linux, un servidor Windows y un cliente Linux.

## Herramientas Utilizadas

Para el desarrollo de este laboratorio se emplearon las siguientes
herramientas y tecnologias:

- **Hipervisor**: VMware Workstation, utilizado para la creacion y gestion
  de las maquinas virtuales.

- **Sistema Operativo Linux**: NixOS Server, configurado sin entorno
  grafico para optimizar el uso de recursos y reforzar la administracion
  mediante linea de comandos.

- **Sistema Operativo Windows**: Windows Server sin interfaz grafica,
  empleado como servidor administrativo y de pruebas, haciendo uso de
  PowerShell para la gestion del sistema.

- **Sistema Cliente**: Sistema operativo de escritorio, en este caso NixOS
  con interfaz grafica, utilizado para validar la conectividad y el correcto
  funcionamiento de la red interna.

- **Lenguajes de scripting**:
  -  **Bash** – Script de diagnostico para sistemas Linux
  - **PowerShell** – Script de diagnostico para sistemas Windows

- **Control de versiones**: Git y GitHub, utilizados para el seguimiento
  de cambios, organizacion del proyecto y publicacion del repositorio.

## Configuracion de Adaptadores de Red

Todo fue implementado sobre un hipervisor de virtualizacion, utilizando
dos adaptadores de red por maquina virtual:

- **NAT**: utilizado exclusivamente para la salida a internet.
- **Red Interna (red_sistemas)**: utilizada para la comunicacion directa
  entre los nodos, garantizando el aislamiento del entorno.

Esta separacion permite simular un escenario real de red sin exponer los
servicios internos al exterior.

## Nodos del Laboratorio

- **Srv-Linux-Sistemas**  
  Servidor Linux sin entorno grafico, optimizado para bajo consumo de
  recursos y administracion por linea de comandos.

- **Srv-Win-Sistemas**  
  Servidor Windows configurado para tareas administrativas, utilizando
  PowerShell como herramienta principal de gestion.

- **Cliente-Sistemas**  
  Nodo cliente destinado a pruebas de conectividad y validacion del
  funcionamiento de la red interna.

## Conectividad y Seguridad

La red interna fue configurada con direccionamiento IP estatico,
permitiendo comunicacion bidireccional entre los tres nodos mediante
pruebas de `ping`.

En el caso de Windows Server, fue necesario habilitar el trafico ICMP
entrante a traves del firewall para permitir la respuesta a solicitudes
de conectividad desde otros nodos, manteniendo las politicas de
seguridad activas.

## Scripts de Diagnostico

Como parte de la preparacion del entorno para futuras tareas de
automatizacion, se desarrollaron scripts de diagnostico inicial que
muestran en consola:

- Nombre del equipo
- Direccion IP activa
- Espacio disponible en disco

Los scripts se encuentran organizados en la carpeta `/scripts`.

## Scripts EXTRAS

Para poder realizar la practica se necesito de scripts extras para configuraciones o en su defecto cambiar las ips de la interfaz de red ens37 para Linux (Server y cliente) y la interfaz de red con Index #7 en Windows Server

## Evidencias

La documentacion tecnica del laboratorio, incluyendo la tabla de
direccionamiento IP, capturas de pruebas de conectividad y snapshots del
estado base del entorno, se encuentra disponible en la carpeta `/docs`.

## Conclusion

El entorno implementado proporciona una base funcional, aislada y
reproducible para practicas de administracion de sistemas, cumpliendo con
los criterios de conectividad, optimizacion de recursos y orden tecnico
requeridos para el laboratorio.
