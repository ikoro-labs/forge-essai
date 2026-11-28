#!/bin/sh
# F-9999 A1 (A1.1) : lire essai.txt donne la seule ligne `essai de bout en bout`.
set -eu
cd "$(dirname "$0")/.."
test -f essai.txt || { echo "FAIL F-9999 A1: essai.txt absent"; exit 1; }
test "$(wc -l < essai.txt)" = "1" || { echo "FAIL F-9999 A1: essai.txt n'a pas une seule ligne"; exit 1; }
test "$(cat essai.txt)" = "essai de bout en bout" || { echo "FAIL F-9999 A1: contenu inattendu"; exit 1; }
echo "ok F-9999 A1"
