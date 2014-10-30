Snakes on a plane
=================

Snakes-on-a-plane is a set of docker containers for running docker when you have
no or restricted internet connectivity -- like when you are on an airplane. A container
for a local docker registry exists, but other pieces of infrastructure are necessary
to run with limited connectivity.

Development on this began during the [Docker Hackathon 2014-10-30](https://blog.docker.com/2014/10/announcing-docker-global-hack-day-2/).

Scope
=====

The project is scoped to have three parts:

1. local pypi mirror

Working with python requires access to a pypi repository. Without internet access, this is not possible.

2. local ubuntu apt-get server

Similarly, working with an ubuntu image commonly requires ubuntu packages. Having an alternative apt service
with a populated cache would make this possible.

3. local yum repo

The same applies to working with Centos and yum packages.

Todo
====

pypi
----

Initial single-host implementation
1. Find python pypi package
- localshop
- devpy
2. Dockerfile
2.1 Create basic Dockerfile that installs pypi and requirements
2.2 Perform init actions
2.3 Add EXPOSE, USER, and VOLUME statements
3. Scripts to build and run docker containers
- Set ports and volumes

Multiple-host implementation
4. Upgrade database to use postgresql
5. Upgrade web server to nginx
6. Add fig file
- localshop
- postgresql
- nginx
