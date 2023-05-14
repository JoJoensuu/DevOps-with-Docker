# Start from the alpine image
FROM ubuntu:20.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get -y install curl

# Copy the hello.sh file from this location to /usr/src/app/ creating /usr/src/app/hello.sh.
COPY missing_dep.sh .

# Execute a command with `/bin/sh -c` prefix.

# When running Docker run the command will be ./hello.sh
CMD ./missing_dep.sh
