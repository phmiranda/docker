# versão do sistema operacional.
FROM ubuntu:16.04

# atualização dos pacotes e instalação do sudo.
RUN apt-get update
RUN apt-get install -y sudo

# instalação de dependências/pacotes necessários para configuração do ambiente.
RUN sudo apt-get install -y sudo
#RUN sudo apt-get install -y curl
#RUN sudo apt-get install -y wget
#RUN sudo apt-get install -y software-properties-common
#RUN sudo apt-get install -y python-software-properties
#RUN sudo apt-get install -y python3-software-properties
#RUN sudo apt-get update

# inclusão do repositório para instalação do PHP
#RUN sudo add-apt-repository -y ppa:ondrej/php
#RUN sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
#RUN sudo apt-get update

# instalação do servidor apache.
#RUN sudo apt-get install -y apache2

# instalação do PHP na sua versão 7.1.
#RUN sudo apt-get install -y php7.2
#RUN sudo apt-get install -y php7.2-gd
#RUN sudo apt-get install -y php7.2-cli
#RUN sudo apt-get install -y php7.2-dev
#RUN sudo apt-get install -y php7.2-curl
#RUN sudo apt-get install -y php7.2-mcrypt
#RUN sudo apt-get install -y php7.2-mysql
#RUN sudo apt-get install -y php7.2-pgsql
#RUN sudo apt-get install -y php7.2-sqlite3
#RUN sudo apt-get install -y php7.2-odbc
#RUN sudo apt-get install -y php7.2-soap
#RUN sudo apt-get install -y php7.2-json
#RUN sudo apt-get install -y php7.2-xml
#RUN sudo apt-get install -y php7.2-zip
#RUN sudo apt-get install -y libapache2-mod-php7.2

# instalação do gerenciador de dependências composer
#RUN sudo curl -sS https://getcomposer.org/installer | php
#RUN sudo mv composer.phar /usr/local/bin/composer

# ativação do modo rewrite do apache.
#RUN sudo a2enmod rewrite

# exposição das portas do container..
#EXPOSE 80
#EXPOSE 443

# execução automática do apache ao instalar os softwares necessários.
#CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]