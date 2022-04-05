FROM python:3.7.3

RUN apt-get update && apt-get install -y cmake

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY . ./requirements.txt /usr/src/app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN cd /usr/src/app/