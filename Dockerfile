FROM python:3-alpine

COPY setup /setup

# Install requirements
RUN (cd /setup; sh install.sh)

# Set the work directory to blog
WORKDIR /bot

# Start the server
CMD ["/bin/sh", "/bot/bootstrap.sh"]
