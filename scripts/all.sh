#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../ || exit 

scripts/cleanup.sh

###############################
# let's start the steps
###############################
steps/step1-1.sh
steps/step1-1.test.sh

steps/step1-2-file-server.sh 1>/dev/null &
FILE_SERVER_PID=$!
sleep 2

steps/step1-3.sh
steps/step1-3.test.sh 

steps/step2-1.sh
steps/step2-1.test.sh

# steps/step2-2-client.sh 1>/dev/null &
# CLIENT_PID=$!
# sleep 2

# steps/step2-2.test.sh 

# scripts/kill-all-children.sh "$CLIENT_PID"
scripts/kill-all-children.sh "$FILE_SERVER_PID"

###############################
# finished
###############################

scripts/cleanup.sh