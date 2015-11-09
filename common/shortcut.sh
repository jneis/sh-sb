#!/bin/bash

echo "Usage: $0 <app> <command> <shortcut> <script>"

APP=$1
COMMAND=$2
SHORTCUT=$3
SCRIPT=$(readlink -f $4)
FILE=/opt/sh/$APP/$COMMAND.sh

mkdir -p /opt/sh/$APP
cp $SCRIPT $FILE
chmod +x $FILE
ln -s $FILE /usr/local/bin/

