#!/bin/bash
# takes in a URL and displays all HTTP methods
curl -sI ALLOW $1 -L | grep "Allow" | cut -d " " -f2-
