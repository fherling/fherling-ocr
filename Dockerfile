ARG ARCH=
FROM ${ARCH}jbarlow83/ocrmypdf

# Install dependencies
USER root
RUN apt update && apt upgrade -y

RUN apt install curl git inotify-tools file -y

RUN mkdir /ocr-input
RUN mkdir /ocr-output
COPY ./ocr-scripts /ocr-scripts      

RUN addgroup --gid 65538 ocrgroup

# Create a user 'ocruser' under 'ocrgroup'
RUN adduser  --uid 1039 --gid 65538 --disabled-password --gecos "" ocruser

# Chown all the files to the app user.
RUN chown -R ocruser:ocrgroup /ocr-scripts

# Switch to 'ocruser'
USER ocruser

WORKDIR /ocr-scripts

ENTRYPOINT [ "/ocr-scripts/watch-files.sh" ]