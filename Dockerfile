# syntax=docker/dockerfile:1
FROM ubuntu:latest
RUN apt update && apt install git -y && rm -rf /var/lib/apt/lists/*
ADD . /app
WORKDIR /app
ENTRYPOINT ["/app/run.sh"]