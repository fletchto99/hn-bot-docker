# HN Bot

This is a containerized version of the qznc's [hackernews bot](https://github.com/qznc/hn_bot) used to post to [/r/hackernews](https://reddit.com/r/hackernews). The bot runs in a cron job every hour.

## Usage

```
docker run \
  --name=hn_bot \
  -v <path to data>:<path inside container> \
  -e praw_client_id=<client id> \
  -e praw_client_secret=<client secret> \
  -e praw_username=<username> \
  -e praw_password=<password> \
  -e database_file=<path> \
  fletchto99/hn-bot
```

## Parameters
* `-v <path to data>:<path inside container>`
* `-e praw_client_id` - The bot's client ID
* `-e praw_client_secret` - The bot's client ID
* `-e praw_username` - The bot's username on reddit
* `-e praw_password` - The bot's password

For more information see the [praw documentation](https://praw.readthedocs.io/en/latest/getting_started/configuration/options.html#configuration-options).

## Optional Parameters
* `-e databsase_file` - The path to the databse file (preferably mounted on a persistent volume)
