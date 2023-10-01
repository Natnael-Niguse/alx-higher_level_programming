#!/bin/bash
# takes url and send a request to that URL, and display the size of the body of the response

if [ $# -ne 1 ]; then
        echo "Usage: $0 <URL>"
        exit 1
fi

url="$1"

response_file="mktemp"
curl -s -o "$response_file" "$url"

if [ $? -ne 0 ]; then
        echo "Error: Failed to fetch the URL: $url"
        exit 1
fi

response_size=$(wc -c < "$response_file")
echo "$response_size"

rm "$response_file"
