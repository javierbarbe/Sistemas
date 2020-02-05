:<<EOF
	crear una cuenta llamada :practica
	comentario : "cuenta practicas sistemas"
	uid:9999
	grupo principal: users
	grupos secundarios : users,sudo
	shell: /bin/bash
	password: 123456
	
	comprobar que existe en /etc/passwd
	comrpobar que existe en /etc/shadow
	inciiar sesison en otro terminal

EOF

useradd -m -u 9999 -g adm -G users,sudo -s /bin/bash practica
echo  "practica:123456" | chpasswd
grep -e "^practica:x:" /etc/passwd
grep -e "^practica:" /etc/shadow
su practica 