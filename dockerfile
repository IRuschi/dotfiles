FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN apt-get update && apt-get install -y git locales tzdata sudo

WORKDIR /home/root/

RUN git clone --recursive https://github.com/IRuschi/dotfiles.git  && cd dotfiles && ./all.sh
CMD ["bash"]
