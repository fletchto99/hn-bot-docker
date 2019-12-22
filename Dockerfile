FROM python:3-alpine

COPY setup /setup

# Install requirements
RUN (cd /setup; sh install.sh)

# Cleanup setup files
RUN rm -rf /setup

# Set the work directory to blog
WORKDIR /bot

RUN ln -sf /proc/1/fd/1 /var/log/cron.log

# Start the server
CMD /bin/sh /bot/bootstrap.sh
