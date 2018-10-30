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

# exposição das portas do container..
#EXPOSE 8080
#EXPOSE 443

# execução automática do apache ao instalar os softwares necessários.
#CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]