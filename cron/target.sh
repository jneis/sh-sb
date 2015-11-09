#!/bin/bash

# edit user's crontab
# $ crontab -e

# add script call with format: min h dom month dow command
# > * * * * * bash /workspace/target.sh

# check task added
# $ crontab -l

echo "$(date)" >> /workspace/logs/out.log

