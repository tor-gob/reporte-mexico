#!/bin/bash
fecha=$(date +%Y%m%d-%H%M%S)
dataset='federal'

echo "Dataset: ${dataset}"
echo ""

echo "== Scanner sin torificar"
echo -n "Inicio: "
date
${HOME}/grafo/tor-gob/simple-scan.sh ${HOME}/grafo/${dataset}.csv > ${HOME}/grafo/tor-gob/csv/${fecha}-${dataset}.csv
echo -n "Fin: "
date
echo ""

echo "== Scanner torificado"
echo -n "Inicio: "
date
torify ${HOME}/grafo/tor-gob/simple-scan.sh ${HOME}/grafo/${dataset}.csv > ${HOME}/grafo/tor-gob/csv/${fecha}-${dataset}-torified.csv
echo -n "Fin: "
date
