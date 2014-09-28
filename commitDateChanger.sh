#!/bin/bash

# Script para cambiar la fecha de un commit a la fecha que se le pase por parámetros, fecha actual si no se le pasa ninguna
# Ejemplo: $ ./commitDateChanger "1970-01-01 12:45 +0100"
export LANG=en_EN.UTF-8
date=`date -d "$@" "+%c %z"`
echo $date
GIT_COMMITTER_DATE="$date" git commit --amend --date "$date"
