#!/bin/bash

# execute chmod +x restart.sh

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
  ./tfs >> /home/styller/relatorio.log &
  PID=$!
  echo $PID > tfs.pid
  wait $PID
  sleep 5
done
