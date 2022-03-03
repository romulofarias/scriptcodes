#!/bin/bash
# Script para baixar dados via ftp com WGET
read -r STA USER PASSWD HOST FILEPATH < /var/tmp/sta.smart24.txt
# FDATE - data do arquivo a ser baixado
FDATE=20220127
FILEPATH=${FILEPATH}${FDATE}
DIR=$(mkdir -p "/tmp/${STA}")
wget -cr -nd ftp://${USER}:${PASSWD}@${HOST}${FILEPATH} -P $DIR
