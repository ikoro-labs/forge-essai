#!/bin/sh
# F-9999 A1 (cas A1.1) : essai.txt existe à la racine et sa seule ligne est "essai de bout en bout".
set -eu
cd "$(dirname "$0")/.."
test -f essai.txt || { echo "FAIL F-9999 A1: essai.txt absent"; exit 1; }
test "$(wc -l < essai.txt)" -eq 1 || { echo "FAIL F-9999 A1: essai.txt n'a pas exactement une ligne"; exit 1; }
test "$(cat essai.txt)" = "essai de bout en bout" || { echo "FAIL F-9999 A1: contenu inattendu"; exit 1; }
echo "OK F-9999 A1"
