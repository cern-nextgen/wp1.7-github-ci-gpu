FROM registry.cern.ch/ngt-wp1.7/gpu_burn:latest

WORKDIR /root

COPY install.sh /root

RUN bash /root/install.sh && rm /root/install.sh

CMD ["tail", "-f", "/dev/null"]
