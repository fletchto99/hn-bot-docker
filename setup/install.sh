#!/bin/sh

# Exit if anything fails
set -e

mkdir /bot

apk add --no-cache git

# Install the hn_bot
git clone "https://github.com/qznc/hn_bot.git" /bot

# Install the bot's requirements
pip install -r "/bot/requirements.txt"
