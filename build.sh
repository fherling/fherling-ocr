#!/bin/bash

docker build --no-cache -f Dockerfile -t fherlingatpd/fherling-ocr:latest .
#
#docker push fherlingatpd/fherling-ocr:latest

#minikube image load fherlingatpd/fherling-ocr:latest

