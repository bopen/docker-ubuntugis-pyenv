FROM bopen/ubuntu-pyenv:latest

MAINTAINER Alessandro Amici <a.amici@bopen.eu>

RUN apt-get update && apt-get install -y --no-install-recommends \
    software-properties-common python-software-properties \
    && add-apt-repository ppa:ubuntugis/ubuntugis-unstable \
    && apt-get update && apt-get install -y --no-install-recommends \
    gdal-bin \
    libgdal-dev \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
