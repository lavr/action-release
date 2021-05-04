FROM python:3-slim AS builder
ADD . /app
WORKDIR /app

WORKDIR /app

ENTRYPOINT ["/app/run.sh"]