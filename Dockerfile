FROM python:3.7

RUN apt-get update -y --fix-missing
RUN apt-get install --fix-broken -y build-essential vim cmake

ARG APP_DIR=/usr/app/

USER root

RUN mkdir ${APP_DIR}

WORKDIR ${APP_DIR}

COPY requirements.txt ${APP_DIR}

RUN pip3 install -r requirements.txt
