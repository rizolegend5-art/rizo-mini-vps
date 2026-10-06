# ⚡ RIZO HACKER — ANDROID MINI VPS

<p align="center">

```text
██████╗ ██╗███████╗ ██████╗
██╔══██╗██║╚══███╔╝██╔═══██╗
██████╔╝██║  ███╔╝ ██║   ██║
██╔══██╗██║ ███╔╝  ██║   ██║
██║  ██║██║███████╗╚██████╔╝
╚═╝  ╚═╝╚═╝╚══════╝ ╚═════╝


🔥 ANDROID MINI VPS • BOT HOSTING • AUTO RESTART
Python Bots • Telegram Bots • Virtual Environment • Logs • Process Manager


🌈 RIZO MINI VPS
Turn your Android phone + Termux into a simple personal bot-hosting environment.
RIZO Mini VPS provides:
🐍 Python bot hosting
🤖 Telegram bot support
⚡ Start / Stop / Restart
🔄 Automatic restart
📦 ZIP upload & extraction
🧪 Separate virtual environment
📜 Live logs
🔐 .env support
📊 Bot status
🖥️ System information
🗑️ Bot management
🎨 RIZO HACKER CLI interface
⚡ INSTALLATION

Open Termux and run:

pkg update -y
pkg install -y git
Clone the repository:
git clone https://github.com/rizolegend5-art/rizo-mini-vps.git
Enter the project:
cd rizo-mini-vps
Install RIZO Mini VPS:
bash install.sh
After installation:
rizo

🚀 QUICK START
1️⃣ Create a bot
rizo create mybot
2️⃣ Allow storage access
termux-setup-storage
3️⃣ Upload your bot ZIP
rizo upload mybot ~/storage/downloads/mybot.zip
4️⃣ Install requirements
rizo install mybot
5️⃣ Set entry file
rizo entry mybot main.py
6️⃣ Start bot
rizo start mybot
🎛️ RIZO COMMAND CENTER
Command
Function

rizo
Open dashboard
rizo create NAME
Create bot
rizo upload NAME ZIP
Upload ZIP
rizo install NAME
Install requirements
rizo entry NAME FILE
Set entry file
rizo start NAME
Start bot
rizo stop NAME
Stop bot
rizo restart NAME
Restart bot
rizo status NAME
Bot status
rizo list
List all bots
rizo logs NAME
Show logs
rizo logs-live NAME
Live logs
rizo info NAME
Bot information
rizo system
System information
rizo delete NAME
Delete bot
rizo help
Show help
🔥 FEATURES
🐍 Python Environment
Every bot can have its own virtual environment.
Bot A
 └── venv/

Bot B
 └── venv/

Bot C
 └── venv/
This helps keep bot dependencies separated.
📦 ZIP BOT UPLOAD
Upload your complete bot as a ZIP:
rizo upload mybot ~/storage/downloads/mybot.zip
RIZO extracts the project automatically.
🔄 AUTO RESTART
If the bot process stops unexpectedly, RIZO can restart it automatically.
BOT START
   ↓
RUNNING
   ↓
CRASH / STOP
   ↓
AUTO RESTART
   ↓
RUNNING
📜 LOG SYSTEM
Check normal logs:
rizo logs mybot
Watch live logs:
rizo logs-live mybot
🔐 ENVIRONMENT VARIABLES
Keep secrets outside your source code.
Example:
BOT_TOKEN=YOUR_BOT_TOKEN
API_KEY=YOUR_API_KEY
OWNER_ID=YOUR_OWNER_ID
⚠️ Never upload real tokens or API keys to GitHub.
📁 PROJECT STRUCTURE
The GitHub repository stays simple:
rizo-mini-vps/
│
├── vps
├── install.sh
├── uninstall.sh
├── README.md
├── .gitignore
└── LICENSE
Runtime data is created automatically on Android:
~/rizo-vps/
│
├── bots/
├── logs/
├── manager/
└── config/
You don't need to manually create these GitHub folders.
🧠 HOW IT WORKS
        📱 ANDROID
             │
             ▼
        ┌───────────┐
        │  TERMUX   │
        └─────┬─────┘
              │
              ▼
      ┌───────────────┐
      │ RIZO MINI VPS │
      └───────┬───────┘
              │
       ┌──────┼──────┐
       ▼      ▼      ▼
    🤖 Bot  🤖 Bot  🤖 Bot
       │      │      │
       ▼      ▼      ▼
    Python  Python  Python
🖥️ MULTI-BOT HOSTING
You can create multiple bot projects:
rizo create bot1
rizo create bot2
rizo create bot3
Then manage them separately:
rizo start bot1
rizo start bot2
rizo start bot3
Check all bots:
rizo list
⚙️ UPDATE RIZO
Pull the latest version from GitHub:
cd ~/rizo-mini-vps
git pull
Then reinstall/update the manager if required:
bash install.sh
🛡️ SECURITY
Never put sensitive information directly inside public GitHub files.
❌ Don't do this:
BOT_TOKEN = "123456789:REAL_TOKEN"
✅ Use environment variables:
import os

BOT_TOKEN = os.getenv("BOT_TOKEN")
And keep secrets inside:
.env
The repository .gitignore is configured to ignore .env.
📱 ANDROID NOTE
RIZO Mini VPS runs through Termux.
Android may stop background processes because of:
Battery optimization
Background restrictions
RAM pressure
Android process management
Device restart
For better reliability, allow Termux to run in the background and disable battery optimization for it when your device provides that option.
This project is a personal Android hosting environment, not a replacement for a professional cloud VPS.
🎨 RIZO HACKER MODE
╔══════════════════════════════════════╗
║          R I Z O   H A C K E R      ║
║                                      ║
║        ANDROID MINI VPS              ║
║                                      ║
║  [1] CREATE BOT                      ║
║  [2] START BOT                       ║
║  [3] STOP BOT                        ║
║  [4] RESTART BOT                     ║
║  [5] STATUS                           ║
║  [6] LOGS                             ║
║  [7] SYSTEM                           ║
║  [8] DELETE                           ║
╚══════════════════════════════════════╝
⚡ COMMAND EXAMPLE
$ rizo list

╔════════════════════════════════╗
║       RIZO BOT MANAGER         ║
╠════════════════════════════════╣
║ bot1        RUNNING            ║
║ bot2        STOPPED            ║
║ bot3        RUNNING            ║
╚════════════════════════════════╝
🧩 REQUIREMENTS
You need:
Android
Termux
Python
Git
tmux
unzip
Internet connection
❤️ RIZO MINI VPS
Built for people who want a simple way to run their own Python bots directly from Android.
██████╗ ██╗███████╗ ██████╗
██╔══██╗██║╚══███╔╝██╔═══██╗
██████╔╝██║  ███╔╝ ██║   ██║
██╔══██╗██║ ███╔╝  ██║   ██║
██║  ██║██║███████╗╚██████╔╝
╚═╝  ╚═╝╚═╝╚══════╝ ╚═════╝

        RIZO HACKER
     ANDROID MINI VPS

⚡ BUILD • HOST • MANAGE • CONTROL ⚡