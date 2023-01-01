
#!/bin/bash

cd /home/rafael/Documentos/alura-shell-curso2/

if [ $1 == "GET" ] || [ $1 == "POST" ] || [ $1 == "PUT" ] || [ $1 == "DELETE" ]
then
    cat apache.log | grep $1
else
    echo "comando não existe"
fi