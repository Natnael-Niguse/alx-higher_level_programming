#!/bin/bash
# sends a request to a URL passed as 
curl -o /dev/null -sw "%{http_code}" $1
