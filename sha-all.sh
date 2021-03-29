#!/bin/bash

ls -1 *.??? | while read i ; do

    if [ -n "$i" ] && [ -s "$i.sha256" ]; then
        echo "$i.sha256 file exists. Skipping..."
    else
        sha256sum "$i" > "$i.sha256"
    fi
done
