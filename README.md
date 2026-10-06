# ⚡ RIZO HACKER — ANDROID MINI VPS

## 🌈 Android + Termux Bot Hosting

**Python Bot Hosting • Telegram Bots • Auto Restart • Logs • Process Manager**

[![RIZO](https://img.shields.io/badge/RIZO-HACKER-ff0055?style=for-the-badge&logo=android&logoColor=white)](https://github.com/rizolegend5-art/rizo-mini-vps)
[![Platform](https://img.shields.io/badge/PLATFORM-ANDROID-00e5ff?style=for-the-badge&logo=android&logoColor=white)](https://github.com/rizolegend5-art/rizo-mini-vps)
[![Shell](https://img.shields.io/badge/LANGUAGE-SHELL-7dff00?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://github.com/rizolegend5-art/rizo-mini-vps)
[![License](https://img.shields.io/badge/LICENSE-MIT-bd00ff?style=for-the-badge)](LICENSE)

🔴 **RED** · 🟠 **ORANGE** · 🟡 **YELLOW** · 🟢 **GREEN** · 🔵 **BLUE** · 🟣 **PURPLE**

---

## 🚀 RIZO MINI VPS

**RIZO Mini VPS** is a lightweight Android + Termux bot manager for managing Python bot projects directly from your Android device.

```text
                         📱 ANDROID
                             │
                             ▼
                       ┌───────────┐
                       │  TERMUX   │
                       └─────┬─────┘
                             │
                             ▼
                   ┌──────────────────┐
                   │  RIZO MINI VPS   │
                   └────────┬─────────┘
                            │
              ┌─────────────┼─────────────┐
              ▼             ▼             ▼
          🤖 BOT 1      🤖 BOT 2      🤖 BOT 3
```

## ✨ FEATURES

| Feature | Status |
|---|---|
| 🐍 Python Bot Hosting | ✅ |
| 🤖 Telegram Bot Support | ✅ |
| ⚡ Start / Stop / Restart | ✅ |
| 📊 Bot Status & List | ✅ |
| 📜 Normal & Live Logs | ✅ |
| 📦 ZIP Upload & Extraction | ✅ |
| 🧪 Separate Virtual Environment | ✅ |
| 🔐 `.env` Support | ✅ |
| 🔁 Auto Restart | ✅ |
| 🖥️ System Information | ✅ |
| 🗑️ Bot Delete | ✅ |
| 🌈 RIZO HACKER CLI | ✅ |

---

# ⚡ INSTALLATION

### 1. Update Termux

```bash
pkg update -y
pkg upgrade -y
```

### 2. Install Git

```bash
pkg install -y git
```

### 3. Clone RIZO

```bash
git clone https://github.com/rizolegend5-art/rizo-mini-vps.git
```

### 4. Enter the project

```bash
cd rizo-mini-vps
```

### 5. Install RIZO

```bash
bash install.sh
```

### 6. Start RIZO

```bash
rizo
```

---

# 🎯 QUICK START

### Create a bot

```bash
rizo create mybot
```

### Give Termux storage access

```bash
termux-setup-storage
```

### Upload a bot ZIP

```bash
rizo upload mybot ~/storage/downloads/mybot.zip
```

### Install requirements

```bash
rizo install mybot
```

### Set entry file

```bash
rizo entry mybot main.py
```

### Start the bot

```bash
rizo start mybot
```

---

# 🎛️ COMMAND CENTER

```text
╔══════════════════════════════════════════════╗
║            ⚡ RIZO HACKER PANEL ⚡            ║
╠══════════════════════════════════════════════╣
║  CREATE       → Create a new bot             ║
║  UPLOAD       → Upload bot ZIP               ║
║  INSTALL      → Install requirements         ║
║  ENTRY        → Set entry file               ║
║  START        → Start bot                    ║
║  STOP         → Stop bot                     ║
║  RESTART      → Restart bot                  ║
║  STATUS       → Check bot status             ║
║  LIST         → List all bots                ║
║  LOGS         → Show bot logs                ║
║  LIVE LOGS    → Watch live logs              ║
║  INFO         → Bot information              ║
║  SYSTEM       → System information           ║
║  DELETE       → Delete bot                   ║
║  HELP         → Show help                    ║
╚══════════════════════════════════════════════╝
```

## 🧰 ALL COMMANDS

| Command | Description |
|---|---|
| `rizo` | Open RIZO dashboard |
| `rizo create NAME` | Create a bot |
| `rizo upload NAME ZIP` | Upload ZIP |
| `rizo install NAME` | Install requirements |
| `rizo entry NAME FILE` | Set entry file |
| `rizo start NAME` | Start bot |
| `rizo stop NAME` | Stop bot |
| `rizo restart NAME` | Restart bot |
| `rizo status NAME` | Check status |
| `rizo list` | List bots |
| `rizo logs NAME` | Show logs |
| `rizo logs-live NAME` | Live logs |
| `rizo info NAME` | Bot information |
| `rizo system` | System information |
| `rizo delete NAME` | Delete bot |
| `rizo help` | Show help |

---

# 🤖 MULTI-BOT HOSTING

```bash
rizo create bot1
rizo create bot2
rizo create bot3

rizo start bot1
rizo start bot2
rizo start bot3

rizo list
```

Example:

```text
╔════════════════════════════════════╗
║          RIZO BOT STATUS           ║
╠════════════════════════════════════╣
║  bot1        ● RUNNING             ║
║  bot2        ● RUNNING             ║
║  bot3        ○ STOPPED             ║
╚════════════════════════════════════╝
```

---

# 🔄 AUTO RESTART

```text
       ┌──────────────┐
       │  BOT START   │
       └──────┬───────┘
              ▼
       ┌──────────────┐
       │   RUNNING    │
       └──────┬───────┘
              ▼
       ┌──────────────┐
       │ PROCESS STOP │
       └──────┬───────┘
              ▼
       ┌──────────────┐
       │ AUTO RESTART │
       └──────┬───────┘
              ▼
       ┌──────────────┐
       │   RUNNING    │
       └──────────────┘
```

---

# 📦 ZIP SUPPORT

Example project:

```text
mybot.zip
├── main.py
├── requirements.txt
├── config.py
└── handlers/
```

Upload:

```bash
rizo upload mybot ~/storage/downloads/mybot.zip
```

---

# 🐍 PYTHON VIRTUAL ENVIRONMENTS

Each bot can have its own environment:

```text
~/rizo-vps/
└── bots/
    ├── bot1/
    │   ├── main.py
    │   ├── requirements.txt
    │   └── venv/
    ├── bot2/
    │   └── venv/
    └── bot3/
        └── venv/
```

---

# 📜 LOG SYSTEM

```bash
rizo logs mybot
rizo logs-live mybot
```

Typical logs:

```text
~/rizo-vps/logs/
├── bot1.log
├── bot2.log
└── bot3.log
```

---

# 🔐 ENVIRONMENT VARIABLES

Use `.env` for private configuration:

```env
BOT_TOKEN=YOUR_BOT_TOKEN
API_KEY=YOUR_API_KEY
OWNER_ID=YOUR_OWNER_ID
```

Python:

```python
import os

BOT_TOKEN = os.getenv("BOT_TOKEN")
API_KEY = os.getenv("API_KEY")
OWNER_ID = os.getenv("OWNER_ID")
```

> ⚠️ Never publish real bot tokens, API keys, passwords, sessions, or private keys to a public repository.

---

# 📁 PROJECT STRUCTURE

GitHub root:

```text
rizo-mini-vps/
├── vps
├── install.sh
├── uninstall.sh
├── README.md
├── .gitignore
└── LICENSE
```

Runtime directories are created automatically:

```text
~/rizo-vps/
├── bots/
├── logs/
├── manager/
└── config/
```

---

# 🌈 RIZO HACKER UI

```text
╔══════════════════════════════════════════════╗
║                                              ║
║              R I Z O   H A C K E R          ║
║                                              ║
║          A N D R O I D   M I N I   V P S    ║
║                                              ║
║      ⚡ BUILD • HOST • MANAGE • CONTROL ⚡   ║
║                                              ║
╚══════════════════════════════════════════════╝
```

### RGB STATUS

```text
🔴 SYSTEM
🟠 PROCESS
🟡 WARNING
🟢 RUNNING
🔵 NETWORK
🟣 MANAGER
⚪ STOPPED
```

---

# ⚙️ COMPLETE WORKFLOW

```bash
pkg update -y
pkg install -y git
git clone https://github.com/rizolegend5-art/rizo-mini-vps.git
cd rizo-mini-vps
bash install.sh
termux-setup-storage
rizo create mybot
rizo upload mybot ~/storage/downloads/mybot.zip
rizo install mybot
rizo entry mybot main.py
rizo start mybot
rizo status mybot
rizo logs-live mybot
```

---

# 🔧 UPDATE

```bash
cd ~/rizo-mini-vps
git pull
bash install.sh
```

---

# 🗑️ UNINSTALL

```bash
bash uninstall.sh
```

---

# 📱 ANDROID LIMITATIONS

RIZO runs through Termux, so Android background-management rules still apply.

Possible causes of a bot stopping:

- 🔋 Battery optimization
- 💤 Background restrictions
- 🧠 RAM pressure
- 📱 Android process management
- 🔄 Device restart
- 🌐 Network interruption

For better reliability, allow Termux to run in the background and review battery-optimization settings on your Android device.

> **RIZO Mini VPS is a personal Android hosting environment and is not the same as a professional cloud VPS.**

---

# 🧪 TROUBLESHOOTING

### Bot does not start

```bash
rizo status mybot
rizo logs mybot
ls ~/rizo-vps/bots/mybot
```

### Requirements are missing

```bash
rizo install mybot
```

### Wrong entry file

```bash
rizo entry mybot main.py
rizo restart mybot
```

### Bot stopped

```bash
rizo status mybot
rizo logs mybot
```

---

# 🌐 GITHUB

<div align="center">

[![GitHub](https://img.shields.io/badge/GitHub-RIZO--MINI--VPS-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/rizolegend5-art/rizo-mini-vps)

⭐ **Star the repository if you like the project.**

</div>

---

# 📜 LICENSE

This project is licensed under the **MIT License**.

See [`LICENSE`](LICENSE) for details.

---

<div align="center">

```text
╔══════════════════════════════════════════════╗
║                                              ║
║       ██████╗ ██╗███████╗ ██████╗           ║
║       ██╔══██╗██║╚══███╔╝██╔═══██╗          ║
║       ██████╔╝██║  ███╔╝ ██║   ██║          ║
║       ██╔══██╗██║ ███╔╝  ██║   ██║          ║
║       ██║  ██║██║███████╗╚██████╔╝          ║
║       ╚═╝  ╚═╝╚═╝╚══════╝ ╚═════╝           ║
║                                              ║
║             ⚡ RIZO HACKER ⚡                ║
║            ANDROID MINI VPS                 ║
║                                              ║
╚══════════════════════════════════════════════╝
```

### 🔴 🟠 🟡 🟢 🔵 🟣

**BUILD • HOST • MANAGE • CONTROL**

### Made with ⚡ by RIZO

</div>
