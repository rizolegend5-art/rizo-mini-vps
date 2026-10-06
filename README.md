# RIZO Mini VPS

A lightweight Termux/Android bot manager for running multiple Python bots from your own phone.

> This is a local Android/Termux bot host, not a cloud VPS. Android may stop background processes unless the user configures battery/background settings appropriately.

## Features

- Multiple independent Python bots
- Separate virtualenv per bot
- ZIP upload and extraction
- `requirements.txt` installation
- `.env` support
- Custom startup entry file
- Start / stop / restart
- Crash auto-restart
- Real tmux-based status
- Logs and live logs
- Bot information
- Phone/storage information
- Delete bot
- GitHub-based installer

## Install

In Termux:

```bash
pkg update -y
pkg install -y git
git clone https://github.com/rizolegend5-art/rizo-mini-vps.git
cd rizo-mini-vps
bash install.sh
```

After installation:

```bash
rizo
```

## Create a bot

```bash
rizo create mybot
```

The bot will be created at:

```text
~/rizo-vps/bots/mybot
```

Replace the example `bot.py` with your own code.

Put secrets in:

```text
~/rizo-vps/bots/mybot/.env
```

Example:

```env
BOT_TOKEN=YOUR_TOKEN_HERE
```

Do not commit `.env` or tokens to GitHub.

## Upload a ZIP

Create the bot first:

```bash
rizo create mybot
```

Then upload:

```bash
rizo upload mybot /sdcard/Download/mybot.zip
```

If Android storage is not available in Termux, run:

```bash
termux-setup-storage
```

Then use:

```bash
rizo upload mybot ~/storage/downloads/mybot.zip
```

## Install dependencies

```bash
rizo install mybot
```

RIZO reads:

```text
requirements.txt
```

and installs it into that bot's own virtual environment.

## Choose startup file

RIZO automatically detects:

```text
start.sh
bot.py
main.py
index.py
app.py
```

You can explicitly select one:

```bash
rizo entry mybot main.py
```

## Run

```bash
rizo start mybot
```

Stop:

```bash
rizo stop mybot
```

Restart:

```bash
rizo restart mybot
```

## Status

```bash
rizo status mybot
rizo list
```

## Logs

Last 100 lines:

```bash
rizo logs mybot
```

Live logs:

```bash
rizo logs-live mybot
```

## System information

```bash
rizo system
```

## Delete

```bash
rizo delete mybot
```

## GitHub updates

The manager can support an update URL through:

```bash
export RIZO_REPO_URL="https://raw.githubusercontent.com/rizolegend5-art/rizo-mini-vps/main/vps"
rizo update
```

## Security

Never put bot tokens, passwords, API keys, or private credentials in a public repository.

RIZO stores per-bot environment variables locally in `.env`.

## Important Android note

Termux is not a true cloud VPS. For longer background operation, users may need to disable battery optimization for Termux and keep the phone powered/network-connected. Even then, Android manufacturers can impose their own background restrictions.

## License

MIT
