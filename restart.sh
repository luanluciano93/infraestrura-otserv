#!/bin/bash

# dar permissão para o arquivo restart.sh: $ chmod +x restart.sh&

# Permitir despejos de núcleo
ulimit -c unlimited

# Definir diretório de trabalho
cd /home/styller/

# Laço principal
while true;
do
   ./tfs >> /home/styller/relatorio.log 2>&1
done;

#####################################################################

while true; do
  ./tfs >> /home/styller/relatorio.log &
  PID=$!
  echo $PID > tfs.pid
  wait $PID
  sleep 5
done
