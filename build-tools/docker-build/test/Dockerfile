# Copyright (c) Openthings.
# Please visit https://my.oschina.net/u/2306127.
#docker pull jupyter/all-spark-notebook:7a0c7325e470

#FROM jupyter/all-spark-notebook:7a0c7325e470
FROM ubuntu
LABEL maintainer="Databook Project,https://github.com/databooks<openthings@163.com>"

# ========================================================================================
# Add system packages:
# ********************************************************************

USER root
RUN ls -l /etc/apt/
RUN apt update && apt upgrade -y && \
    apt install -y \
      openssh-client \
      build-essential \
      #python-devel \
      protobuf-compiler \
      libprotobuf-dev && \
    apt autoremove -y
# ********************************************************************
# ====================================================================






