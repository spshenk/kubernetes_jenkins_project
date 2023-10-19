FROM centos:7

MAINTAINER spshenk@gamil.com

RUN yum install -y httpd \

zip \

unzip

ADD https://formycicdproject.s3.amazonaws.com/Antique+Cafe+Free+Website+Template+-+Free-CSS.com.zip /var/www/html/

WORKDIR /var/www/html

RUN unzip "Antique Cafe Free Website Template - Free-CSS.com.zip"

RUN cp -rvf 2126_antique_cafe/* .

RUN rm -rf  "Antique Cafe Free Website Template - Free-CSS.com" "Antique Cafe Free Website Template - Free-CSS.com.zip"

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80 443 

