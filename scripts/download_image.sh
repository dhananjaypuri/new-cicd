#!/bin/bash

echo "Downloading Image"

if docker pull dhananjaypuri/sample-python-ap:latest
then
    echo "Image Pulled Successfully!!!!"
fi
