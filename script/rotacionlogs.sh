:<<EOF
EOF

#!/bin/bash 

contador=1
while true
do 
echo "manando mensaje $contador "
logger -p auth.err -t "[soy yo ]" "==> mensaje de relleno $contador" 
contador=$(($contador+1))
done

