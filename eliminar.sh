#! /usr/bin/env bash

function ayuda {
echo "
---AYUDA---
eliminar.sh ruta/archivo 
Borra un archivo de forma que puede ser recuperado
Parametros: 
- ruta/archivo: ruta absuluta del archivo que desea borrar"
}

#validar entrada
if [ $# -lt 1 ]; then
        echo "Debes pasar un parametro"
        ayuda
        exit 1
fi

archivo="$1"

if test -f "$archivo"; then 
	#"borrar" archivo
	mv "$archivo" /tmp
	echo "archivo borrado"
else 
	echo "archivo no valido"
fi
