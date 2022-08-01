#!/bin/sh
echo "running ROS Docker container"


#makes the docker container and runs mavros protocol
cd $HOME/afrl_container/afrl_container && make test
