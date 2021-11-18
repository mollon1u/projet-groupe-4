FROM dirane/jenkins
EXPOSE 8080
EXPOSE 5000
LABEL maintainer='DREAM TEAM'


RUN touch /usr/local/bin/docker-compose
RUN ls /usr/local/bin/

COPY ./docker-compose /usr/local/bin/docker-compose

RUN chmod +x /usr/local/bin/docker-compose
