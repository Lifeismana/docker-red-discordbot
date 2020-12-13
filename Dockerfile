FROM phasecorex/red-discordbot:full

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        gnupg1 \
        apt-transport-https \
        dirmngr \
    ; \
    export INSTALL_KEY=379CE192D401AB61 ; \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY ;\
    echo "deb https://ookla.bintray.com/debian generic main" | tee  /etc/apt/sources.list.d/speedtest.list ;\
    apt-get update ;\
    apt-get install speedtest; \
    rm -rf /var/lib/apt/lists/*;