#!/bin/sh
# F-9999 A1 (A1.1) : essai.txt existe à la racine et sa seule ligne est "essai de bout en bout".
set -eu
cd "$(dirname "$0")/.."
test -f essai.txt || { echo "FAIL F-9999 A1: essai.txt absent" >&2; exit 1; }
got=$(cat essai.txt)
want="essai de bout en bout"
[ "$got" = "$want" ] || { echo "FAIL F-9999 A1: contenu '$got', attendu '$want'" >&2; exit 1; }
[ "$(wc -l < essai.txt)" -eq 1 ] || { echo "FAIL F-9999 A1: essai.txt n'a pas exactement une ligne" >&2; exit 1; }
echo "OK F-9999 A1"
