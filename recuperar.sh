#!/usr/bin/env bash

function ayuda {
echo "
---AYUDA---
recuperar.sh archivo ruta
Recupera un archivo que fue eliminado
Parametros: 
- archivo: nombre del archivo que desea recuperar
- ruta: ruta a donde desea guardar el archivo recuperado"
}

#validar entrada
if [ $# -lt 2 ]; then
        echo "Faltan parametros"
        ayuda
        exit 1
fi

archivo="$1"
ruta="$2"

#validar archivo
if test -f "$archivo"; then 
	echo "archivo borrado"
fi

#validar ruta
if test -d "$ruta"; then
	#"recuperar" archivo
	mv /tmp/"$archivo" "$ruta"
	echo "archivo recuperado"
fi
