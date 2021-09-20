FROM phasecorex/red-discordbot:full as latest

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        dirmngr \
        curl \
    ; \
    curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash;\
    apt-get install speedtest; \
    rm -rf /var/lib/apt/lists/*;