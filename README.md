# Syncpass
pass wrapper for syncing .password-store to a server via ssh.
For personal use, or whoever uses pass and wants to sync it to a server.

## Requirement
    - `pass`

## Setup Local
.env needs file:
    - IP_ADDRESS (server's ip)
    - PORT
    - PRIVATE_KEY

Run `./syncpass init`
    - Add `ux` permissions if it doesnt run, or use bash

## Setup Server


## Overview
- You have your main `~/.password-store` locally
- Run `syncpass init`
- It will ask to upload your current local `~/.password-store` to your server settings from .env
