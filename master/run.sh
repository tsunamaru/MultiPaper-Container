#!/bin/bash

if [[ -z "$RUNASROOT" ]]; then
     echo "Running as nobody"
     chown -R nobody:nogroup /app
     exec gosu nobody:nogroup java -jar "$@"
else
     echo "Running as root"
     exec java -jar "$@"
fi
