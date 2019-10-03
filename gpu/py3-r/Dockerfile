FROM tensorflow/tensorflow:1.14.0-gpu-py3

COPY entrypoints/ /entrypoints

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-transport-https software-properties-common

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

RUN apt-get update && apt-get install -y cmake libopenmpi-dev zlib1g-dev git libsm6 libxext6 libxrender-dev libglib2.0-0 libxml2 libxml2-dev libssl-dev libcurl4-openssl-dev r-base

RUN pip install --upgrade pip && pip install rpy2

ADD requirements.R requirements.R
RUN Rscript requirements.R

ENTRYPOINT [ "/entrypoints/entrypoint.sh" ]