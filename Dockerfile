FROM ubuntu
RUN apt-get update
RUN apt-get -y install python2.7
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties
RUN apt-add-repository -y ppa:mosquitto-dev/mosquitto-ppa
RUN apt-get update
RUN apt-get -y install mosquitto
EXPOSE 1883
ENTRYPOINT ["mosquitto", "-v","-p"]
CMD ["1883"]

