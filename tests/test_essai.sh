#!/bin/sh
# F-9999 A1 (cas A1.1) : essai.txt existe a la racine, sa seule ligne est "essai de bout en bout".
cd "$(dirname "$0")/.." || exit 1
if [ "$(cat essai.txt)" = "essai de bout en bout" ] && [ "$(wc -l < essai.txt)" -eq 1 ]; then
  echo "ok F-9999 A1.1"
else
  echo "FAIL F-9999 A1.1: essai.txt absent ou contenu inattendu" >&2
  exit 1
fi
