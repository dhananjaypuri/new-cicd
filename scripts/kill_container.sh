#!/bin/bash

if docker ps -a --format "{{.ID}} {{.Names}}" | grep flaskapp$
then
    containerID=$(docker ps -a --format "{{.ID}} {{.Names}}" | grep flaskapp$ | awk '{print $1}')
    echo "Kill container ${containerID}"
    if docker container rm -f ${containerID}
    then
        echo "Deleted container"
        echo "Cleaning Image"
        docker image rm dhananjaypuri/sample-python-ap:latest
    fi

fi
