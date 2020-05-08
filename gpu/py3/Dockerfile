FROM tensorflow/tensorflow:2.2.0-gpu

COPY entrypoints/ /entrypoints

RUN apt-get update && apt-get install -y cmake libopenmpi-dev zlib1g-dev git libsm6 libxext6 libxrender-dev libglib2.0-0

ENTRYPOINT [ "/entrypoints/entrypoint.sh" ]