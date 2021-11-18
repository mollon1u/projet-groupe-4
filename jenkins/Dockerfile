FROM dirane/jenkins
EXPOSE 8080
EXPOSE 5000
LABEL maintainer='DREAM TEAM'

RUN touch /usr/local/bin/docker-compose
RUN ls /usr/local/bin/
RUN curl "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose

RUN chmod +x /usr/local/bin/docker-compose
