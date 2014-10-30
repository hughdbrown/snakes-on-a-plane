# snakes-on-a-plane: pypi
#
# Reference:
# http://www.plankandwhittle.com/snakes-in-your-datacenter/
# http://bitofcheese.blogspot.com/2013/05/local-pypi-options.html
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
    apt-get install -y nginx && \
    apt-get install -y python python-dev python-distribute python-pip && \
    pip install localshop && \
    apt-get clean

# nginx settings
ADD etc/nginx/sites-available/localshop /etc/nginx/sites-available/.

RUN rm /etc/nginx/sites-enabled/default && \
    ln -s /etc/nginx/sites-available/localshop /etc/nginx/sites-enabled/localshop

# Upstart config files
ADD *.conf /etc/init/

ADD run/run-localhost.sh /

RUN useradd --user-group --home-dir /home/localshop --system --shell /bin/bash localshop
# RUN useradd --user-group --no-create-home --system --shell /bin/false localshop

EXPOSE 8000
USER localshop
VOLUME ["/data"]

# Start localshop
CMD ["/run-localhost.sh"]
