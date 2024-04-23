#!/bin/bash
export DEBUG=true
export CRAWLEE_LOG_LEVEL=DEBUG
#export APIFY_API_BASE_URL="https://ada.requestcatcher.com/test"
#export APIFY_API_PUBLIC_BASE_URL="https://ada.requestcatcher.com/test"

#set -a
#ls
curl http://httpbin.org/ip | apify actor:push-data


