#!/bin/bash
# takes url and send a request to that URL
file=$(mktemp) && curl -s -o "$file" "$1" && wc -c < "$file"
