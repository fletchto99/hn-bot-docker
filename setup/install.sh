#!/bin/sh

# Exit if anything fails
set -e

mkdir /bot

echo "Installing git"
apk add --no-cache git

# Install the hn_bot
echo "Cloning repo"
git clone "https://github.com/qznc/hn_bot.git" /bot

echo "Copying bootstrap file"
cp -v /setup/bootstrap.sh /bot/bootstrap.sh

echo "Applying crontab"
mkdir /etc/cron.d/
cp -v /setup/hn-cron /etc/cron.d/hn-cron
crontab /etc/cron.d/hn-cron
touch /var/log/cron.log

# Install the bot's requirements
echo "Installing pip requirements"
pip install -r "/bot/requirements.txt"


