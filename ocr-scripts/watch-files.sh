#!/bin/bash
directory_to_watch="/ocr-input"

while true; do
    file=$(inotifywait -e create --format "%w%f" "$directory_to_watch")
    ./ocr-file.sh "$file" &
done


