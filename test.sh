#!/bin/bash
imp() {
    local path=$1
    if [ -f $path ]; then
        set -a
        source $path
        set +a
    fi
}
### imports ###
imp ".env"
imp "settings"
imp "version"
imp "./utils/import_ssh"

if [ -f "private-key.asc" ]; then
    echo "here"
fi
