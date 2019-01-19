FROM docker.io/java:8

MAINTAINER xiaoxiong581

EXPOSE 19080 19081

ADD SpringBootProvider-0.0.1-SNAPSHOT.tar.gz /opt
ADD entrypoint.sh /etc

#RUN apt-get update && \
#    apt-get install vim && \
#    apt-get install dos2unix && \
#    find /opt -name "*.sh" | xargs dos2unix    

ENTRYPOINT ["/etc/entrypoint.sh"]