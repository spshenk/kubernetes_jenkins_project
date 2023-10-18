FROM centos:7

MAINTAINER spshenk@gamil.com

RUN yum install -y httpd \

zip \

unzip

ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/browny.zip /var/www/html/

WORKDIR /var/www/html

RUN unzip browny.zip

RUN cp -rvf browny/* .

RUN rm -rf browny browny.zip

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80 44 

