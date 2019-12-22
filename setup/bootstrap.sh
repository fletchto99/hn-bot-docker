set -e

# Ensure all vars are set
if [[ -z "${praw_username}" ]]; then
  echo "Missing praw_username"
  exit 1
fi

if [[ -z "${praw_password}" ]]; then
  echo "Missing praw_password"
  exit 1
fi

if [[ -z "${praw_client_id}" ]]; then
  echo "Missing praw_client_id"
  exit 1
fi

if [[ -z "${praw_client_secret}" ]]; then
  echo "Missing praw_client_secret"
  exit 1
fi

# Create the praw environment
echo "Creating the config file"
touch /bot/praw.ini
echo "[bot1]" >> /bot/praw.ini
echo "client_id=${praw_client_id}" >> /bot/praw.ini
echo "client_secret=${praw_client_secret}" >> /bot/praw.ini
echo "password=${praw_password}" >> /bot/praw.ini
echo "username=${praw_username}" >> /bot/praw.ini

echo "Starting the bot"
/usr/sbin/crond -f
