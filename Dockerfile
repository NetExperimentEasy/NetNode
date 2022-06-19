FROM ubuntu:latest

LABEL seclee <"jacelau@outlook.com">

RUN apt update \
    && apt install -y inetutils-ping iperf3 net-tools \
    && apt install -y python3 python3-pip \
    && apt install -y git \
    && apt install -y iproute2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# unkown error, cant install by this way
# RUN pip install git+https://github.com/NetExperimentEasy/EasyDES.git

WORKDIR /NetE
ADD ./ .

RUN git clone https://github.com/NetExperimentEasy/EasyDES.git
RUN cd EasyDES && pip3 install -e .



