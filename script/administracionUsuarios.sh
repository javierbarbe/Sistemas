:<< EOF
	script administracioon cuentas de usuario
	GESTION CUENTAS
	-----------------------------
	1.Crear nueva cuenta
	2.Modificar cuenta existente
	3. Borrar cuenta existente
	4. Cambiar password cuenta existente
	5.------SALIR--------

en opcion 1 pedir: comentarios, shell, uid, grupo principal, grupos
en opcion 2 pedir que modificar y el valor a modificar
en opcion 3 pedir si quieres borrar el directorio personal
en opcion 4  te tiene que pedir la psswd, reintroducir la passwrd, verla 
comprobar que son iguales 
EOF 

echo -e "		GESTION CUENTAS
		===========================
	1.Crear nueva cuenta
	2.Modificar cuenta existente
	3. Borrar cuenta existente
	4. Cambiar password cuenta existente
	5.------SALIR--------
"
read -p "Opcion ..." opcion1
case $opcion in
	1)  read -p "Comentarios" comentarios
		read -p "shell" shell
		read -p "uid" uid
		read -p "grupo Principal" gPrincipal
		read -p "grupos" gruposSec
		read -p "nombre" nombre
		useradd -c "$comentarios" -s "$shell" -u "$uid" -g "$gPrincipal" -G "$gruposSec " "$nombre"
