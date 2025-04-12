#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: garb <command> [<args>...]"
    exit 1
fi

"$@" 2>/dev/null
