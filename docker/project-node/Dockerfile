FROM centos:7

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all

COPY /bin/start.sh /start.sh
RUN chmod a+x /start.sh
COPY ssh /root/.ssh
RUN yum install -y git\
    chmod +x /root/.ssh; \
    chmod 600 /root/.ssh/id_rsa;
    
CMD ["/start.sh"]