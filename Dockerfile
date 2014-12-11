FROM python:2.7

MAINTAINER Andrés Sánchez García <asg1612@gmail.com>


RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git python-pip 

RUN pip install paho-mqtt
WORKDIR /opt/
RUN git clone https://github.com/jpmens/mqttwarn.git
ADD mqttwarn.ini /opt/mqttwarn/
WORKDIR /opt/mqttwarn/

CMD ["python", "/opt/mqttwarn/mqttwarn.py"]
