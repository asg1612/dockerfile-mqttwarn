dockerfile-mqttwarn
===================

This docker is mqttwarn service:
https://github.com/jpmens/mqttwarn

Build the docker image:
>docker build -t asg1612/mqttwarn .

Run the container:
Link the container with a mqtt server container.
>docker run --name mqttwarn -d --link mosquitto:mosquitto asg1612/mqttwarn
