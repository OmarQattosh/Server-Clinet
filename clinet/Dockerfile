FROM centos:7

RUN yum update -y
RUN yum install -y yum-utils 
RUN yum-config-manager --add-repo http://192.168.204.46:8899/cstrepo
RUN yum install -y httpd 
COPY validate.sh validate.sh
RUN chmod 777 validate.sh %% ./validate.sh
ENTRYPOINT ["/usr/sbin/httpd" , "-D", "FOREGROUND"]
