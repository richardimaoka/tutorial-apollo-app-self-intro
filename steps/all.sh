#!/bin/sh

cd "$(dirname "$0")" || exit

./cleanup.sh
./step1-1.sh
./step1-2-file-server.sh &
FILE_SERVER_PID=$!

# clean up
kill -- $FILE_SERVER_PID
./cleanup.sh