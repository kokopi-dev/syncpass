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

compressed_zip_path="${C_PATH}/$PASSWORD_STORE_ZIP_FILENAME_LOCAL"
compressed_zip=$(tar -czf $compressed_zip_path $HOME/.password-store)
echo $compressed_zip
