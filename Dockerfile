ARG distro

FROM ubuntu:${distro}

RUN  apt update \
    && apt install -y \
       tmux \
       curl \
       wget \
       htop \
       unrar \
       nano \
    && apt autoremove \
    && apt clean
