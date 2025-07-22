# Syncpass
pass (https://www.passwordstore.org/) wrapper for syncing .password-store to a server via ssh.
For personal use, or whoever uses pass and wants to sync it to a server.

## Requirement
    - `drill (ldns)` or `dig`
    - `pass`

## Setup Local
.env needs file:

    - IP_ADDRESS (server's ip OR ddns, it will auto resolve)
    - USERNAME (server's user you want to access)
    - PORT
    - PRIVATE_KEY

Run `./syncpass init`
    - Add `u+x` permissions if it doesnt run, or use `bash syncpass`

## Setup Server


## Overview
- You have your main `~/.password-store` locally
- Make a file `.env` in this project root, and setup the required variables from above
- Run `syncpass init`
- It will ask to upload your current local `~/.password-store` to your server settings from .env
