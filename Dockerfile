FROM fusl/steamcmd
ENV VERSION=3399070
RUN mkdir /app \
 && /steamcmd/steamcmd.sh +login anonymous +force_install_dir /app +app_update 258550 +exit \
 && sync
ENV LD_LIBRARY_PATH=/app:/app/RustDedicated_Data:/app/RustDedicated_Data/Plugins/x86_64:${LD_LIBRARY_PATH}
WORKDIR /app
ENTRYPOINT ["./RustDedicated"]
