FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install pyYAML

COPY main/feed.py /usr/bin/feed.py

COPY main/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]