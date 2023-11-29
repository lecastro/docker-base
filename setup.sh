# Utilize esse comando apenas para INICIAR um projeto.

docker-compose up -d
DIR="./backend/public"
if [ ! -d "$DIR" ]; then
    echo "Deletando pasta vazia"
    mv ./backend ./backend_setup
    echo "Instalando projeto"
    export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
    echo "Configurando projeto dentro do docker" . $APP_NAME ;

    docker exec app composer create-project laravel/laravel backend
    mv ./backend_setup/backend ./app

    docker-compose down

    docker rm app
    docker-compose build app

    docker rm $APP_NAME"_nginx"
    docker-compose build nginx
    
    docker-compose up -d
fi
