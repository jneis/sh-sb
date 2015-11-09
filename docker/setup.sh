#!/bin/bash

mkdir /opt/docker
cp ./run.sh /opt/docker/docker_run.sh
chmod +x /opt/docker/docker_run.sh
ln -s /opt/docker/docker_run.sh /usr/local/bin/dr

