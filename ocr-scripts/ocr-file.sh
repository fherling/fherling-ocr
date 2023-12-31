#!/bin/bash
# OCR script for OCRmyPDF
echo "Run with ocrmyPDF version $(/usr/local/bin/ocrmypdf --version)"
echo "OCR-input $1"
echo $(id)
tagesdatum=$(date +%Y-%m-%d)
inputfile="$1"


if [  -f "$inputfile" ]; then

    outputfilename=$(basename "$inputfile")
    outputdirectory=$(dirname "$inputfile")
    outputdirectory="${outputdirectory//ocr-input/ocr-output}"
    outputdirectory="$outputdirectory/ocrmypdf/$tagesdatum"
    mkdir -p "$outputdirectory"
    outputfile=$outputdirectory/$outputfilename
    echo "OCR-output $outputfile"

    mimetype=$(file --mime-type -b "$inputfile")
    echo "Mimetype: ${mimetype}"
    if [ "$mimetype" = "application/pdf" ]; then
            /usr/local/bin/ocrmypdf --clean --deskew --tesseract-timeout 600 --force-ocr -l deu "$inputfile" "$outputfile"
            echo 'OCR complete'
    else
            echo 'Wrong file type. OCR skipped'
    fi
else
    echo 'Input is a directory. OCR skipped'    
fi
