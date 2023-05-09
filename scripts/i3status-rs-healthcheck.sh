#!/usr/bin/env bash

# The user agent used for sending requests.
USERAGENT="redbot/healthcheck v1"

# Loop through the health check endpoints fail on the first failed health check
for ENDPOINT in "$@"
do
    STATUS=$(curl -s -o /dev/null -w "%{http_code}" -L -H "User-Agent: $USERAGENT" $ENDPOINT)
    if [[ $STATUS -ne 200 ]]; then
        echo "{\"icon\": \"\", \"state\": \"Critical\", \"text\": \"down: $STATUS\", \"short_text\": \"down\"}"
        exit 1
    fi
done

# Otherwise, everything is good, return an ok response
echo "{\"icon\": \"\", \"state\": \"Good\", \"text\": \"up\", \"short_text\": \"up\"}"
