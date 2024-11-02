#!/bin/bash

#docker build --no-cache -f Dockerfile -t fherlingatpd/fherling-ocr:latest .
#docker build -f Dockerfile -t fherlingatpd/fherling-ocr:latest .

docker buildx build --platform linux/amd64,linux/arm64/v8  -f Dockerfile -t fherlingatpd/fherling-ocr:latest .

#
#docker push fherlingatpd/fherling-ocr:latest

#minikube image load fherlingatpd/fherling-ocr:latest

