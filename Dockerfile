FROM jupyter/pyspark-notebook:latest

WORKDIR /app

COPY . .

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        openjdk-8-jdk-headless \
        wget \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV PYSPARK_PYTHON /opt/conda/bin/python

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 4040
