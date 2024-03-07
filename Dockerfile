FROM ghcr.io/actions/actions-runner:latest

RUN apt-get -y update
RUN apt-get -y install nginx
