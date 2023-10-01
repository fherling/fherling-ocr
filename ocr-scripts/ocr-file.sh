#!/bin/bash
echo "OCR-input $1"

inputfile=$1
inputdirectory=${inputfile%/*}
outputdirectory=${inputdirectory//ocr-input/ocr-output}
mkdir -p $outputdirectory
outputfile=${inputfile//ocr-input/ocr-output}

echo "OCR-output $outputfile"

if [ ! -d "$inputfile" ]
then
    /usr/local/bin/ocrmypdf --redo-ocr -l deu+eng $inputfile $outputfile
    echo 'OCR complete'
else
    echo 'OCR skipped'    
fi
