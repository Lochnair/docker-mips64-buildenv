#!/bin/sh
PUID=${PUID:-1234}
PGID=${PGID:-1234}

usermod -u "$PUID" user
groupmod -g "$PGID" user

export PATH="/opt/cross/bin:$PATH"

su-exec "user" env "$@"
