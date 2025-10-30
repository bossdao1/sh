#!/usr/bin/env bash
set -euo pipefail

DB_USER='lbigjjmy_hr_system_user'
DB_PASS='7vTwBkH)4MrA'
DB_NAME='lbigjjmy_hr_system_db'
TMP="/tmp/mycnf.$$"

trap 'rm -f "$TMP"' EXIT

cat > "$TMP" <<EOF
[client]
user=${DB_USER}
password=${DB_PASS}
database=${DB_NAME}
EOF
chmod 600 "$TMP"

mysql --defaults-extra-file="$TMP" -N -e "SELECT password FROM users;"
