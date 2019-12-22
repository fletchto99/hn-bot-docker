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

echo "Starting the bot"
/usr/sbin/crond -f
