ARG distro

FROM ubuntu:${distro}

RUN  apt update \
    && apt install -y \
       tmux \
       curl \
       wget \
       htop \
       unrar \
    && apt autoremove \
    && apt clean
