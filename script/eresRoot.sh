:<<XD

hay que comprobar si eres root antes de ejecutarlo 
	(ver variables de entornos UID o USERNAME) Si no eres root mostrar mensaje de error
		y salir
	Te tien que pedir el nombre de una cuenta y te debe mostrar :
	-directorio personal:---
	-uid: ----
	-gid:---
	-shel:---
	-hashpass:--

XD

#!/bin/bash
clear

uid=`cat /etc/passwd | grep -e "root" | cut -d ":" -f 3`

if test "$uid" = "$UID" 
then
	 echo "eres root"
	 echo $uid
	 echo $UID " variable de entorno"
else 
echo "eres un pringado"
fi

