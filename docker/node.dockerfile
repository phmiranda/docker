# comentário
FROM node:latest

# comentário
MAINTAINER Pedro Henrique <pehhagah.1607@gmail.com>

# comentário
COPY . /var/www/html

# comentário
RUN npm install
RUN npm start

# comentário
EXPOSE 80 443

# comentário
ENTRYPOINT [""]
