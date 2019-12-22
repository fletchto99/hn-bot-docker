# HN Bot

This is a containerized version of the qznc's [hackernews bot](https://github.com/qznc/hn_bot) used to post to [/r/hackernews](https://reddit.com/r/hackernews).

## Usage

```
docker run \
  --name=hn_bot \
  -e praw_client_id=<client id> \
  -e praw_client_secret=<client secret> \
  -e praw_username=<username> \
  -e praw_password=<password>
  fletchto99/hn-bot
```

## Parameters
* `-e praw_client_id` - The bot's client ID
* `-e praw_client_secret` - The bot's client ID
* `-e praw_username` - The bot's username on reddit
* `-e praw_password` - The bot's password

For more information see the [praw documentation](https://praw.readthedocs.io/en/latest/getting_started/configuration/options.html#configuration-options).
