FROM ubuntu
RUN apt-get update
RUN apt-get -y install python2.7
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties
RUN apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
RUN apt-get update
EXPOSE 1880


