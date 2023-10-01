FROM jbarlow83/ocrmypdf

# Install dependencies
USER root
RUN apt update

#RUN apt install inotify-tools -y
RUN apt install curl git inotify-tools -y
      
RUN mkdir /ocr-input
RUN mkdir /ocr-output

WORKDIR /ocr-scripts

#CMD [ "watchman watch /ocr-input/" ]


ENTRYPOINT [ "bash" ]