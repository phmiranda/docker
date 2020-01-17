# imagem base, adicionada do repositório docker.
FROM node:latest

# responsável por dar manutenção na imagem.
MAINTAINER Pedro Henrique <pehhagah.1607@gmail.com>

# definição das váriáveis de ambiente no contâiner.
ENV DOCKER_HOST_VOLUME=/var/www/desenvolvimento/docker
ENV DOCKER_CONTAINER_VOLUME=/var/www/
ENV PORTA=3000

# cópia o código fonte para o contâiner.
COPY $DOCKER_HOST_VOLUME $DOCKER_CONTAINER_VOLUME
#VOLUME $DOCKER_HOST_VOLUME $DOCKER_CONTAINER_VOLUME

# informa ao docker qual o diretório de trabalho dentro do contâiner.
WORKDIR /var/www/

# executa comandos dentro do container que irá ser criado.
RUN npm install

# comandos de entrada ao criar contâiner.
ENTRYPOINT npm start

# expõe as portas de acesso ao contâiner.
EXPOSE $PORTA
