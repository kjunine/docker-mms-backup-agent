#!/bin/bash

sed -i -e "s/^\(mmsApiKey=\)$/\1${MMS_API_KEY}/" /etc/mongodb-mms/backup-agent.config
