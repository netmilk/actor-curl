#!/bin/bash
export DEBUG=true
export CRAWLEE_LOG_LEVEL=DEBUG
set -a
source envs
env
ls
curl http://httpbin.org/ip | apify actor:push-data


