FROM ubuntu:16.04
WORKDIR /app
ARG QB64_VERSION=1.1-20170120.51
ENV QB64_VERSION=$QB64_VERSION
ARG QB64_BUILD=2017_02_09__02_14_38
ENV QB64_BUILD=$QB64_BUILD
ENV DEBIAN_FRONTEND noninteractive
ENV USER root

ADD http://www.qb64.net/release/official/$QB64_BUILD-$QB64_VERSION/windows/qb64-$QB64_VERSION-win.zip /
COPY dosbox.conf $HOME/.dosboxrc

RUN apt-get update && apt-get install -y \
    wget unzip dosbox && \ 
    apt autoremove && rm -r /var/lib/apt/lists/*

CMD ["nohup", "dosbox"]