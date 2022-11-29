FROM ghcr.io/lifeismana/red-discordbot:full as latest

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        libaio1 \
        libaio-dev \
        dirmngr \
        curl \
    ; \
    curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash;\
    apt-get install speedtest; \
    rm -rf /var/lib/apt/lists/*;