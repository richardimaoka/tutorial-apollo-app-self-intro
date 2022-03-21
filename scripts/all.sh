#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../steps || exit
 
./cleanup.sh
./step1-1.sh
./step1-2-file-server.sh &
# FILE_SERVER_PID=$!
# sleep 3
# # clean up
# fg -$FILE_SERVER_PID
# ./cleanup.sh