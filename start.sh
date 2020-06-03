#!/bin/bash
# ------------------------------------------------------------------
#       Miguel Angel Gonzalez Sanchez
#       Stoyan Parvanov
#       Juan Antonio Lax Contreras
#
#          IES Ingeniero de la Cierva
#
#             Despliegue de SANDBOX Windows
#
# ------------------------------------------------------------------

read -p "Por defecto la máquina está configurada con 4GiB de RAM y 4 nucleos. ¿Deseas hacer cambios? si/NO " RESP
case $(echo $RESP | tr '[A-Z]' '[a-z]') in
        s|si) 	read -p "Pulse enter para abrir el editor y cambiar la configuración..."
                echo
            		nano ./Vagrantfile
	      ;;
        *)     ;;
    esac
echo "Iniciando máquina virtual con vagrant, fijese en los puertos expuestos"
echo "Recomendamos el uso de Escritorio Remoto para el uso de la interfaz gráfica de Windows"
echo "La primera vez puede tardar bastante tiempo dependiendo de su conexion a internet"
vagrant up
echo "Cuando acabe escriba en este mismo terminal: vagrant destroy"
