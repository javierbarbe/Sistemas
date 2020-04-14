
<<EOF


EOF
# que pagina web quieres consultar 

read -p " Dime que pagina web deseas ver" pagina



if   echo $pagina |grep -e "^\(www\.\)" && echo -e "La pagina tiene un formato correcto " ||  echo -e "La pagina debe empezar por www."
then 
pagina=`echo $pagina | cut -d "." -f 2,3`
echo  "$pagina  es la nueva pagina sin www. " 
	
fi

# defino primero el array de la pagina web a consultar
