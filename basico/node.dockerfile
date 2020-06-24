# comentário.
FROM node:latest

# comentário.
MAINTAINER Pedro Henrique

# comentário.
ENV PORT=3000

# comentário.
#COPY . /var/www

# comentário.
WORKDIR /var/www

# comentário.
RUN npm install

# comentário.
ENTRYPOINT npm start

# comentário.
EXPOSE $PORT
