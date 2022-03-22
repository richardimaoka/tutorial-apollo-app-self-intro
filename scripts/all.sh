#!/bin/sh

EXIT_STATUS=0
CURRENT_FILE=$(basename "$0")

cd "$(dirname "$0")" || exit
./cleanup.sh


cd ../steps || exit 

./step1-1.sh
./step1-2-file-server.sh &
FILE_SERVER_PID=$!
FILE_SERVER_PGID=$(ps -xo pid,pgid | awk '$1=="'$FILE_SERVER_PID'" {print $2}')
sleep 2
./step1-2.test.sh 

ps -xfo pid,ppid,pgid,cmd

# if ! kill -- -"$FILE_SERVER_PGID"
# then 
#   echo "FAILED ($CURRENT_FILE): could not stop file server with pgid=$FILE_SERVER_PGID (pid=$FILE_SERVER_PID)"
#   EXIT_STATUS=1
# else 
#   echo "SUCCESS ($CURRENT_FILE): stopped file server with pgid=$FILE_SERVER_PGID (pid=$FILE_SERVER_PID)"
# fi


# echo "weehehehheheehehehhe33"
# cd ../scripts || exit 
# ./cleanup.sh

# # exit $EXIT_STATUS