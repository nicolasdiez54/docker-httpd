FROM centos:7
RUN yum install httpd -y 

COPY index.html /var/www/html/index.html

RUN chown apache:apache /var/www/html/index.html && \
chmod 644 /var/www/html/index.html

EXPOSE 80

CMD ["/usr/sbin/httpd","-DFOREGROUND"]
