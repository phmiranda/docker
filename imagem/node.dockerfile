# imagem base, adicionada do repositório docker.
FROM node:latest

# responsável por dar manutenção na imagem.
MAINTAINER Pedro Henrique <pehhagah.1607@gmail.com>

# definição das váriáveis de ambiente no contâiner.
ENV PORTA=3000

# cópia o código fonte para o contâiner.
COPY ../public /var/www

# informa ao docker qual o diretório de trabalho dentro do contâiner.
WORKDIR /var/www

# executa comandos dentro do container que irá ser criado.
RUN npm install

# expõe as portas de acesso ao contâiner.
EXPOSE $PORTA

# comandos de entrada ao criar contâiner.
ENTRYPOINT npm start
