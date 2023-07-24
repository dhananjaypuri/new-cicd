#!/bin/bash

if docker container run --name flaskapp -d -p 8000:5000 dhananjaypuri/sample-python-ap:latest
then
    echo "Container started Successfully!!!!"
fi
