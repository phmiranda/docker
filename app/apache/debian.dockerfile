# comentários.
FROM debian:latest

# comentários.
RUN apt-get update
RUN apt-get install -y sudo
RUN sudo apt-get install -y apache2
#RUN sudo apt-get install -y php7.1
#RUN curl -sS https://getcomposer.org/installer | php
#RUN sudo mv composer.phar /usr/local/bin/composer

# comentários.
RUN a2enmod rewrite

# comentários.
EXPOSE 80 443

# comentários.
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]