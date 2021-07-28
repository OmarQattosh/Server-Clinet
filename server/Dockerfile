FROM centos:7
RUN yum update -y
RUN yum install -y httpd
RUN yum install -y createrepo
RUN yum install -y yum-utils
RUN yum install -y lsof 

COPY httpd.conf /etc/httpd/conf/httpd.conf

WORKDIR /var/www/html/
RUN mkdir cstrepo && cd cstrepo && repotrack httpd && cd .. && createrepo cstrepo

EXPOSE 8899

ENTRYPOINT ["/usr/sbin/httpd" , "-D", "FOREGROUND"]
