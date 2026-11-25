#!/bin/sh
# F-9999 A1 / A1.1 : essai.txt existe a la racine, sa seule ligne est "essai de bout en bout".
root="$(cd "$(dirname "$0")/.." && pwd)"
f="$root/essai.txt"
if [ ! -f "$f" ]; then
  echo "FAIL F-9999 A1: essai.txt absent a la racine" >&2
  exit 1
fi
if [ "$(wc -l < "$f")" -ne 1 ] || [ "$(cat "$f")" != "essai de bout en bout" ]; then
  echo "FAIL F-9999 A1: contenu inattendu: $(cat "$f")" >&2
  exit 1
fi
echo "PASS F-9999 A1"
