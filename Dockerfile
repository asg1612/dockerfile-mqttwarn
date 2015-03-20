FROM python:2.7

MAINTAINER Andrés Sánchez García <asg1612@gmail.com>


RUN apt-get update &&\
    apt-get install -y git python-pip &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&\
    pip install paho-mqtt slacker


WORKDIR /opt/
RUN git clone https://github.com/jpmens/mqttwarn.git
ADD mqttwarn.ini /opt/mqttwarn/
WORKDIR /opt/mqttwarn/

CMD ["python", "mqttwarn.py"]
