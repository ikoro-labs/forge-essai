#!/bin/sh
# F-9999 A1 (cas A1.1) : essai.txt existe à la racine et sa seule ligne est "essai de bout en bout".
set -eu
racine=$(cd "$(dirname "$0")/.." && pwd)
fichier="$racine/essai.txt"
[ -f "$fichier" ] || { echo "F-9999 A1: essai.txt absent" >&2; exit 1; }
[ "$(wc -l < "$fichier")" -eq 1 ] || { echo "F-9999 A1: essai.txt doit avoir une seule ligne" >&2; exit 1; }
[ "$(cat "$fichier")" = "essai de bout en bout" ] || { echo "F-9999 A1: contenu inattendu" >&2; exit 1; }
echo "F-9999 A1: ok"
