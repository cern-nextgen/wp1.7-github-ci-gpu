FROM registry.cern.ch/docker.io/nvidia/cuda:12.8.1-base-ubi9

WORKDIR /root

COPY install.sh /root

RUN bash /root/install.sh && rm -rf /root/install.sh /root/buildinfo

CMD ["tail", "-f", "/dev/null"]
