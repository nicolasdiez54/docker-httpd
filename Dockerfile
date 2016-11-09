FROM centos:7
RUN yum install httpd -y 

VOLUME /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd","-DFOREGROUND"]
