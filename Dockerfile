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
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && rm -rf /tmp/* /var/tmp/*

CMD ["bash"]
