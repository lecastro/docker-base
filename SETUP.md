# Setup docker


Faça a cópia do `env.example` para `.env`
Configure o `.env` conforme necessário.

Utilize o nome dado ao `APP_NAME` mais o sufixo `_app` ex: `meuapplicativo_app` e informe em:
`environments/development/conf/nginx/sites/default.conf` no parametro `fastcgi_pass`

Execute o comando `docker-compose up -d` quando tiver com a configuração do `.env` finalizada
Após processado o docker, execute o arquivo sh.
```
sudo chmod  +x ./setup.sh
./setup.sh
```
Acesse a hora `http://localhost`

O projeto ficará dentro da pasta `app`
