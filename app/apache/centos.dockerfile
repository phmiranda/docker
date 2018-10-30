# comentários.
FROM centos:latest

# comentários.
RUN yum update
RUN yum install -y sudo
RUN sudo yum install -y httpd
#RUN sudo apt-get install -y php7.1
#RUN curl -sS https://getcomposer.org/installer | php
#RUN sudo mv composer.phar /usr/local/bin/composer

# comentários.
RUN sudo a2enmod rewrite

# comentários.
EXPOSE 80
EXPOSE 443

# comentários.
#CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]