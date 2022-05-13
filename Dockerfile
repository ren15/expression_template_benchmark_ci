FROM ubuntu:22.04
RUN \
    apt-get update &&\ 
    apt-get install -y sudo cmake gcc g++ zsh &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*