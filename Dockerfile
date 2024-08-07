ARG UBUNTU_VERSION
FROM ubuntu:${UBUNTU_VERSION}
LABEL maintainer="hi@timeleap.swiss"

ARG DEBIAN_FRONTEND=noninteractive
ARG BUILD_ARCH=x86_64

WORKDIR /app
COPY ./timeleapd timeleapd
COPY ./libwasmvm.${BUILD_ARCH}.so /usr/lib/libwasmvm.${BUILD_ARCH}.so
COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
