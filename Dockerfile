# syntax=docker/dockerfile:1
FROM python:3.7

# Install cron
RUN apt-get update && apt-get -y install cron

# Change working directory to /app
WORKDIR /app

COPY requirements.txt requirements.txt
COPY web-monitor.py *.env .
COPY crontab /etc/cron.d/crontab

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab
