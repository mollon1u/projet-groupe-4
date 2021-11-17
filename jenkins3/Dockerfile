FROM dirane/jenkins
EXPOSE 8080
EXPOSE 5000
LABEL maintainer='DREAM TEAM'
#RUN  rpm -Va --nofiles --nodigest
#RUN yum install docker
RUN touch /usr/local/bin/docker-compose
RUN ls /usr/local/bin/
#RUN curl "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
COPY ./docker-compose /usr/local/bin/docker-compose
#RUN cat /usr/local/bin/docker-compose
#RUN systemctl start docker
#RUN yum install docker-compose
RUN chmod +x /usr/local/bin/docker-compose
#RUN curl -fsSL https://get.docker.com -o get-docker.sh
#RUN sh get-docker.sh
#RUN sudo systemctl start docker
#RUN docker ps -a
#RUN sudo usermod -aG docker vagrant
#RUN sudo systemctl start docker
#RUN sudo systemctl enable docker
