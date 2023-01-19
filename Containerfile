FROM docker.io/library/ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive

ENV NAME=ubuntu-toolbox VERSION=20.04
LABEL com.github.containers.toolbox="true" \
      com.github.debarshiray.toolbox="true" \
      name="$NAME" \
      version="$VERSION" \
      usage="This image is meant to be used with the toolbox command" \
      summary="Ubuntu 20.04 base image for toolbox contaienrs" \
      maintainer="Cameron Bentley <cameron@bentley.sh>"

COPY README.md /

RUN apt-get update
RUN apt-get -y upgrade

# use unminimized ubuntu container for documentation, etc
RUN yes | unminimize

COPY extra-packages /
RUN apt-get -y install $(cat extra-packages | xargs)
RUN rm /extra-packages

# update sudoers file, disable dns lookups for sudo
RUN sed -i -e 's/ ALL$/ NOPASSWD:ALL/' /etc/sudoers
RUN echo 'Defaults !fqdn' >> /etc/sudoers

RUN apt-get clean
RUN echo VARIANT_ID=container >> /etc/os-release
RUN touch /etc/localtime

# unset env for future interative use
ENV DEBIAN_FRONTEND=

CMD /bin/sh