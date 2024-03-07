#Dockerfile
FROM python:3.9

# Location of source code
ENV PROJECT_ROOT /opt/app
RUN mkdir -p $PROJECT_ROOT
WORKDIR $PROJECT_ROOT
ENV PYTHONPATH=/opt/app/

COPY ./requirements.txt .

RUN pip install setuptools wheel
RUN pip install -r ./requirements.txt

COPY ./src ./src
COPY ./api ./api

RUN pip install --upgrade pip
RUN apt-get update -y && \
    apt-get install -y vim curl && \
    rm -rf var/lib/apt/lists/* \