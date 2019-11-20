FROM python:alpine

ARG CLI_VERSION=1.16.116

RUN apk -uv add --no-cache zip && \
    apk add --no-cache jq && \
    pip install --no-cache-dir awscli==$CLI_VERSION

RUN apk add --no-cache nodejs && \
	apk add --no-cache npm


RUN npm install --global gulp-cli

WORKDIR /aws

CMD sh


