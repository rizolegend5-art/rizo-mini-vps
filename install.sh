#!/data/data/com.termux/files/usr/bin/bash
set -e

REPO_URL="${RIZO_REPO_URL:-https://github.com/rizolegend5-art/rizo-mini-vps.git}"
RIZO_HOME="${RIZO_HOME:-$HOME/rizo-vps}"

echo "╔══════════════════════════════════════╗"
echo "║        RIZO MINI VPS INSTALLER      ║"
echo "╚══════════════════════════════════════╝"

command -v pkg >/dev/null 2>&1 || {
  echo "❌ This installer is for Termux."
  exit 1
}

pkg update -y
pkg install -y python git tmux unzip curl

mkdir -p "$RIZO_HOME"/{bots,logs,state,config,manager}

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "⬇️ Downloading RIZO..."
git clone --depth 1 "$REPO_URL" "$TMP/repo"

cp "$TMP/repo/vps" "$RIZO_HOME/manager/rizo"
chmod +x "$RIZO_HOME/manager/rizo"

mkdir -p "$PREFIX/bin"
ln -sf "$RIZO_HOME/manager/rizo" "$PREFIX/bin/rizo"

echo
echo "✅ RIZO Mini VPS installed."
echo "Run:"
echo "  rizo"
echo
