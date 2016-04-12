FROM  zuazo/chef-local:ubuntu-12.04

RUN apt-get update && apt-get -y upgrade && apt-get -y install vim htop
