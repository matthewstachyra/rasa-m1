FROM ubuntu:20.04

COPY . /rasa
WORKDIR /rasa

# install python 3.7
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3.7

# install and upgrade pip
RUN apt-get install -y python3-pip && \
    apt-get install -y python3-dev && \
    apt install python3.8-venv && \
    pip3 install -U pip

# set up venv to install rasa
RUN python3 -m venv /opt/venv && \
    . /venv/bin/activate && \
    pip3 install rasa 


