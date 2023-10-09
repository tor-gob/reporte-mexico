#!/bin/bash
USER=remote
SERVER=192.168.0.1

torify \
    scp ${USER}@${SERVER}:grafo/tor-gob/csv/2021080{1..9}*csv \
        ./csv/origin/

torify \
    scp ${USER}@${SERVER}:grafo/tor-gob/csv/202108{10..30}*csv \
        ./csv/origin/
