#!/bin/bash
set -e

if [ -z "$VTDB_HOSTNAME" ]; then
        echo >&2 'error: missing DB_HOSTNAME environment variable'
        exit 1
fi

if [ -z "$VTDB_USERNAME" ]; then
        echo >&2 'error: missing DB_USERNAME environment variable'
        exit 2
fi

if [ -z "$VTDB_PASSWORD" ]; then
        echo >&2 'error: missing DB_PASSWORD environment variable'
        exit 3
fi

if [ -z "$VTDB_NAME" ]; then
        echo >&2 'error: missing DB_NAME environment variable'
        exit 4
fi

sed -i "s/\$defaultParameters\['db_hostname'\]/'"${VTDB_HOSTNAME}"'/" vtigercrm/modules/Install/views/Index.php
sed -i "s/\$defaultParameters\['db_username'\]/'"${VTDB_USERNAME}"'/" vtigercrm/modules/Install/views/Index.php
sed -i "s/\$defaultParameters\['db_password'\]/'"${VTDB_PASSWORD}"'/" vtigercrm/modules/Install/views/Index.php
sed -i "s/\$defaultParameters\['db_name'\]/'"${VTDB_NAME}"'/" vtigercrm/modules/Install/views/Index.php

exec "$@"

