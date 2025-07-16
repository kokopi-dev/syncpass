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
imp "./utils/import_ssh"

func_get_server_home_path
