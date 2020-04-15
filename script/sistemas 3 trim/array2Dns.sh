#!bin/bash 


<<EOF


EOF
# que pagina web quieres consultar 

read -p " Dime que pagina web deseas ver " pagina



if  test ! echo $pagina |grep -e "^\(www\.\)" && echo -e "La pagina tiene un formato correcto " ||  echo -e "La pagina debe empezar por www." 
then 
#arraypag=( `echo $pagina | sed -s "."`)
#echo -e " ${#arraypag[*]} campos de la pagina"
pagina=`echo $pagina | cut -d "." -f 2,3,4,5`
echo  "$pagina  es la nueva pagina sin www. " 
	dnss=( `dig +short $pagina NS` )
longitud=`echo -e " ${#dnss[*]}"`
echo -e "$longitud"
for ns in $dnss
do 
echo -e "$ns posicion array"
done
#longitud= `echo ${#dnss[*]}`
#echo $longitud
for (( i =0; i< $longitud; i++))
do
	pos=`echo ${dnss[$i]}`
	echo -e "$pos array "
	ping -c 1 $pos>/dev/null 2>&1 && echo -e " dns online" || echo -e  " dns caido" 
done	

#echo  -e "$dnss array"
fi

# defino primero el array de la pagina web a consultar


