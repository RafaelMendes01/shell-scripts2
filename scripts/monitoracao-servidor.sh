
#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null https://caelum-online-public.s3.amazonaws.com/shell-script/parte2/aula_2/index.html)
if [ $resposta_http -eq 200 ]
then
    echo "Tudo esta ok com o servidor"
else
    echo "Houve um problema no servidor. Tentando reinicializar"
    systemctl restart apache2
    echo "...Servidor reinicializado"
fi