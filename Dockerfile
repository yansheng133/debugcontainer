FROM registry.opensuse.org/opensuse/leap:15.6

# Add repos

RUN zypper addrepo https://download.opensuse.org/repositories/network:utilities/openSUSE_Factory/network:utilities.repo && \
    zypper --gpg-auto-import-keys refresh

# Install packages
RUN zypper -n in \
    vim \
    wget \
    nmap \
    mtr \
    bind-utils \
    iputils \
    jq \
    net-tools \
    git \
    ncat

# Clean-up catch
RUN zypper clean

RUN git clone https://github.com/upa/deadman /root/deadman
    
EXPOSE 54321

USER root
WORKDIR /root
ENV HOSTNAME debug-container

CMD ["/bin/bash", "-l"]
