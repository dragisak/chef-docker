FROM  zuazo/chef-local:ubuntu-12.04

MAINTAINER dragisak

RUN apt-get update && apt-get -y upgrade && apt-get -y install vim htop less ssh

EXPOSE 19999


