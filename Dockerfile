FROM alpine:3.7

LABEL maintainer "Yasutaka Arai <araixiv@gmail.com>"

ENV AWS_CLI_VERSION "1.14.64"

RUN apk --no-cache update && \
    apk --no-cache add \
        bash \
        libc6-compat \
        python3 \
        zip \
        && \
    pip3 --no-cache-dir install --upgrade pip && \
    pip3 --no-cache-dir install \
        awscli==${AWS_CLI_VERSION} \
        && \
    rm -rf /var/cache/apk/* 

WORKDIR /workspace
