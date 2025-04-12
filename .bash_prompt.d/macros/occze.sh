#!/bin/bash
# cat "$1" | ccze -A | less -R
if [ -t 0 ]; then  # Check if input is from a terminal (i.e., not piped)
    cat "$1" | ccze -A | less -R
else
    ccze -A | less -R
fi
