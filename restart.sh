#!/bin/bash

# Allow core dumps
ulimit -c unlimited

# Set working directory
cd /home/styller/

# Main loop
while true;
do
   ./tfs >> /home/styller/relatorio.log 2>&1
done;

#####################################################################

#!/bin/bash
while true; do
  ./theforgottenserver > data/logs/output.log &
  PID=$!
  echo $PID > theforgottenserver.pid
  wait $PID
  sleep 5
done