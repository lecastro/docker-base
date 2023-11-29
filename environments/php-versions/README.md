# Cuidado, todos os ajustes realizados nesse procedimento será refletido em todos os projetos em que utiliza a versão do PHP configurada

Para buildar imagens de versões diferentes, crie uma pasta utilizando a versão do PHP como nome e faça a configuração da imagem.

Após ter ajustado a imagem php, faça o build e envie para o docker hub da tradeup.

Comandos:
Faça o build da imagem
`docker build . --tag tradeupgroup01/php:VERSAO_DA_IMAGEM`
ou
`docker-compose build`

Faça o upload para o docker hub
`docker push tradeupgroup01/php:VERSAO_DA_IMAGEM`
