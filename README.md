Snakes on a plane
=================

Snakes-on-a-plane is a set of docker containers for running docker when you have
no or restricted internet connectivity -- like when you are on an airplane. A container
for a local docker registry exists, but other pieces of infrastructure are necessary
to run with limited connectivity.

Development on this began during the Docker Hackathon 2014-10-30.

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
