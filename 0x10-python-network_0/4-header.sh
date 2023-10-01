#!/bin/bash
# takes in a URL as an argument, sends a GET request
curl -sX GET $1 -H "X-HolbertonSchool-User-Id: 98" -L
