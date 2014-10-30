# snakes-on-a-plane: pypi
#
# Reference:
# http://www.plankandwhittle.com/snakes-in-your-datacenter/
# https://github.com/botify-labs/docker-localshop

FROM ubuntu:14.04

MAINTAINER Hugh Brown hughdbrown@yahoo.com

# make sure the package repository is up to date
# apt-get -y upgrade &&
# install python packages
# install localshop
# initialize localshop files
# clean up apt store
RUN echo "deb http://archive.ubuntu.com/ubuntu utopic main universe" >> /etc/apt/sources.list && \
    apt-get -y update && \
    apt-get install -y build-essential pkg-config && \
    apt-get install -y sqlite3 && \
    apt-get install -y python python-dev python-distribute python-pip && \
    pip install localshop && \
    localshop init && \
    apt-get clean

# ADD *.conf /etc/init/.

EXPOSE 8000
USER localshop
VOLUME ["/data"]

# Start localshop
CMD ["run/run-localhost.sh"]
