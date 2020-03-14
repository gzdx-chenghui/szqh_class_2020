FROM ubuntu:latest

COPY .ubuntu/sources.list.cn /etc/apt/sources.list
#ADD apt.conf /etc/apt
#ADD 00aptproxy /etc/apt/apt.conf.d
RUN apt update -y && apt upgrade -y
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim
RUN apt-get install -y curl wget
