FROM ubuntu:latest

RUN apt-get update

RUN apt-get -y install spamassassin python3-pytest python3-pip

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN pip3 install .

CMD service spamassassin start && pytest-3 -v
