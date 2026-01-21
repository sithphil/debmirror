# Building apt-mirror from sources

#FROM docker.1ms.run/library/debian:buster-slim
FROM ubuntu:22.04

RUN apt-get update
#RUN apt-get install debmirror gpg ubuntu-archive-keyring -y
RUN apt-get install debmirror gpg ubuntu-keyring -y

RUN mkdir /mirrorkeyring
RUN gpg --no-default-keyring --keyring /mirrorkeyring/trustedkeys.gpg --import /usr/share/keyrings/ubuntu-archive-keyring.gpg

COPY ./mirrorbuild.sh /usr/bin/mirrorbuild.sh
RUN chmod +x /usr/bin/mirrorbuild.sh
