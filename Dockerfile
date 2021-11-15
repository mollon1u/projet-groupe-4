# syntax=docker/dockerfile:1

FROM python:3

LABEL maintainer='DreamTeam'
LABEL name='pymachine'

WORKDIR /usr/src/app
RUN pwd
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
RUN chmod +x entry_point.sh
CMD [ "./entry_point.sh" ]



