FROM centos:7

RUN yum install -y java-11-openjdk-devel.x86_64

VOLUME /tmp
ADD /pet-clinic-web-0.0.1.jar myapp.jar
RUN sh -c 'touch /myapp.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/myapp.jar"]
