# comentários.
FROM ubuntu:latest

# comentários.
RUN apt-get update
RUN apt-get install -y sudo
RUN sudo apt-get install -y apache2

# comentários.
EXPOSE 80

# comentários.
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]