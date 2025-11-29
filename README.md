# Syncpass
pass (https://www.passwordstore.org/) wrapper for syncing .password-store to a server via ssh.
For personal use, or whoever uses pass and wants to sync it to a server.

---

## Who is this for

* If you use `pass` and want to sync it with other machines/devices
* You have a VPS, supports both home server with ddns and cloud
* You don't use `pass`, but you want 100% no-compromise control over your encrypted passwords, and are willing to use something as archaic as `pass`

---

## Requirement

* `drill (ldns)` or `dig` (if your .env is using ddns instead of ip)
* `pass`

---

## Setup Local

### Env file setup
.env needs file:

* IP_ADDRESS (server's ip OR ddns, it will auto resolve)
* USERNAME (server's user you want to access)
* PORT
* PRIVATE_KEY

### Initialize syncpass setup

Run `./syncpass init`
* Add `u+x` permissions if it doesnt run, or use `bash syncpass`
Then run `pass init-server` after refreshing bashrc with the new pass overwritten command

### Setup GPG keys

Can use current gpg keys or make new ones. Then use the `gpg get` on all your machines/devices to import your keys for your synced password-store passwords, if you have gpg keys uploaded to the server:

* `pass gpg add KEY_ID`: this pushes your gpg keys to the server
* `pass gpg remove`: this deletes your current gpg keys from the server
* `pass gpg get`: this gets your gpg keys from the server

Importing keys

After using the get command:
  - gpg --import public-key.asc
  - gpg --import private-key.asc
  - gpg --edit-key KEY_ID
    - trust
    - 5
    - quit


---

## Non-native pass Commands

* `update`: Force update from server to local, this bypasses version checking
* `gpg`: `add $gpg_id | remove | get` Currently can store only 1 set of keys on the server
* `search`: Searches exact name for root files + subfolders, then partial searches
* `init`: Initializes syncpass, needs to run in project root

---

## Overview

* You have your main `~/.password-store` locally
* Setup the `.env` file, this needs to be done manually on each machine/device
* Use `pass` normally. Everytime you edit the .password-store folder, or try to get a password, syncpass will try to sync the local .password-store folder with the master one from the server.

