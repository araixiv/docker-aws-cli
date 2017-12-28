FROM alpine:3.7

LABEL maintainer "Yasutaka Arai <araixiv@gmail.com>"

ENV AWS_CLI_VERSION "1.14.16"

RUN apk --no-cache update && \
    apk --no-cache add \
    bash \
    python3 \
    py-pip && \
    pip --no-cache-dir install --upgrade pip && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/* 

WORKDIR /aws-cli
