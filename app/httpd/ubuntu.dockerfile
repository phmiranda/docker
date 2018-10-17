# versão do sistema operacional.
FROM ubuntu:16.04

# atualização dos pacotes.
RUN apt-get update

# instalação de dependências/pacotes necessários para configuração do ambiente.
RUN apt-get install -y curl
#RUN apt-get install -y wget
RUN apt-get install -y software-properties-common
RUN apt-get install -y python-software-properties
#RUN apt-get install -y python3-software-properties
RUN apt-get update

# inclusão do repositório para instalação do PHP
#RUN add-apt-repository -y ppa:ondrej/php
#RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
#RUN apt-get update

# instalação do servidor apache.
#RUN apt-get install -y apache2

# instalação do PHP na sua versão 7.1.
#RUN apt-get install -y php7.2
#RUN apt-get install -y php7.2-gd
#RUN apt-get install -y php7.2-cli
#RUN apt-get install -y php7.2-dev
#RUN apt-get install -y php7.2-curl
#RUN apt-get install -y php7.2-mcrypt
#RUN apt-get install -y php7.2-mysql
#RUN apt-get install -y php7.2-pgsql
#RUN apt-get install -y php7.2-sqlite3
#RUN apt-get install -y php7.2-odbc
#RUN apt-get install -y php7.2-soap
#RUN apt-get install -y php7.2-json
#RUN apt-get install -y php7.2-xml
#RUN apt-get install -y php7.2-zip
#RUN apt-get install -y libapache2-mod-php7.2

# instalação do gerenciador de dependências composer
#RUN curl -sS https://getcomposer.org/installer | php
#RUN mv composer.phar /usr/local/bin/composer

# ativação do modo rewrite do apache.
#RUN a2enmod rewrite

# exposição das portas do container..
EXPOSE 80
EXPOSE 443

# execução automática do apache ao instalar os softwares necessários.
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]