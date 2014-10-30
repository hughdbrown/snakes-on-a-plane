# snakes-on-a-plane: pypi
#
# Reference:
# http://www.plankandwhittle.com/snakes-in-your-datacenter/

FROM ubuntu:latest

MAINTAINER Hugh Brown hughdbrown@yahoo.com

RUN apt-get -y update && \
    apt-get install -y python python-dev python-distribute python-pip && \
    pip install localshop && \
    localshop init && \
    apt-get clean

ADD *.conf /etc/init/.

EXPOSE 8000

# Start localshop
CMD ["localshop", "run_gunicorn"]
