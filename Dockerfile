FROM jupyter/pyspark-notebook:latest

WORKDIR /app

COPY . .

USER root

RUN apt-get update
RUN pip install --no-cache-dir -r requirements.txt
RUN great-expectations init

EXPOSE 4040
