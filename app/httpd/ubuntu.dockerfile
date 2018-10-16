# comentários.
FROM ubuntu:latest

# comentários.
RUN DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y sudo
RUN sudo apt-get install -y apache2
#RUN sudo add-apt-repository -y ppa:ondrej/php
#RUN sudo apt-get update
#RUN sudo apt-get install -y php7.1
#RUN sudo apt-get install -y php7.1-gd
#RUN sudo apt-get install -y php7.1-cli
#RUN sudo apt-get install -y php7.1-zip
#RUN sudo apt-get install -y php7.1-curl
#RUN sudo apt-get install -y php7.1-mysql
#RUN sudo apt-get install -y php7.1-pgsql
#RUN sudo apt-get install -y php7.1-sqlite3
#RUN sudo apt-get install -y php7.1-mcrypt
#RUN sudo apt-get install -y php7.1-mbstring
#RUN sudo apt-get install -y php7.1-json
#RUN sudo apt-get install -y php7.1-xml
#RUN sudo apt-get install -y libapache2-mod-php7.1
#RUN curl -sS https://getcomposer.org/installer | php
#RUN sudo mv composer.phar /usr/local/bin/composer

# comentários.
RUN a2enmod rewrite

# comentários.
EXPOSE 80

# comentários.
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]