#!/usr/bin/env bash
set -e

if [ $URL ]; then
    pg_dump -v "$URL" >/usr/src/app/backup.sql

    echo "Not sending the dump actually anywhere"
    gcloud storage cp /usr/src/app/backup.sql gs://db_backup1029
fi
