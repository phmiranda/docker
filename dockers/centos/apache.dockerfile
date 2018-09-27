# comentários.
FROM centos:latest

# comentários.
MAINTAINER Pedro <pehhagah.1607@gmail.com>

# comentários.
RUN yum -y update
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum -y install yum-utils
RUN yum-config-manager --enable remi-php71

EXPOSE 80,443

CMD [""]