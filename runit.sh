# run the docker image with local directory mounted and delete the container after exit
#docker run -it --rm -v /Users/fherling/Documents/git/OCR/fherling-ocr/ocr-scripts:/ocr-scripts  -v /Users/fherling/Documents/git/OCR/ocr-input:/ocr-input -v /Users/fherling/Documents/git/OCR/ocr-output:/ocr-output fherlingatpd/fherling-ocr:latest
docker run --rm -v /Users/fherling/Documents/git/OCR/ocr-input:/ocr-input -v /Users/fherling/Documents/git/OCR/ocr-output:/ocr-output fherlingatpd/fherling-ocr:latest
#docker run -it --rm -v /Users/fherling/Documents/git/OCR/fherling-ocr/ocr-scripts:/ocr-scripts  -v /Users/fherling/Documents/git/OCR/ocr-input:/ocr-input -v /Users/fherling/Documents/git/OCR/ocr-output:/ocr-output ghcr.io/fherling/fherling-ocr:latest


#docker run -it --entrypoint bash  jbarlow83/ocrmypdf:latest