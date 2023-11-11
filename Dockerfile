ARG ARCH=
FROM ${ARCH}jbarlow83/ocrmypdf

# Install dependencies
USER root
RUN apt update && apt upgrade -y

RUN apt install curl git inotify-tools file -y

RUN mkdir /ocr-input
RUN mkdir /ocr-output
COPY ./ocr-scripts /ocr-scripts      

WORKDIR /ocr-scripts

ENTRYPOINT [ "/ocr-scripts/watch-files.sh" ]