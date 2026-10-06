#!/data/data/com.termux/files/usr/bin/bash
set -u

RIZO_HOME="${RIZO_HOME:-$HOME/rizo-vps}"

echo "This removes the RIZO manager and ALL bot data."
read -r -p "Continue? [y/N] " answer
[[ "$answer" =~ ^[Yy]$ ]] || exit 0

if command -v tmux >/dev/null 2>&1; then
  tmux ls 2>/dev/null | awk -F: '/^rizo-/{print $1}' | while read -r s; do
    tmux kill-session -t "$s" 2>/dev/null || true
  done
fi

rm -f "$PREFIX/bin/rizo"
rm -rf "$RIZO_HOME"

echo "RIZO Mini VPS removed."
