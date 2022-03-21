#!/bin/sh

cd "$(dirname "$0")"

./cleanup.sh
./step1-1.sh
./step1-2-file-server.sh &
FILE_SERVER_PID=$!
echo $FILE_SERVER_PID
