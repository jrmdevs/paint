FROM registry.access.redhat.com/ubi7/ubi:7.7

MAINTAINER jrmdevs

LABEL description="Ejercicio paint"

RUN yum install -y httpd && yum clean all

ADD paint.tar /var/www/html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
