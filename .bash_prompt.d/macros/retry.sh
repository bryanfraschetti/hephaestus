#!/bin/bash

DELAY=1

if [ $# -eq 0 ]; then
    echo "Usage: retry <command> [<args>...]"
    exit 1
fi

# Run the command indefinitely until it succeeds
past_time=$(date +%s)
while true; do
    time_now=$(date +%s)
    if "$@" || ((time_now - past_time > 2)); then
        echo "Command succeeded."
        break
    fi
    echo "Command failed. Retrying in $DELAY second(s)..."
    past_time=$time_now
    sleep $DELAY
done

