FROM debian:stretch
RUN dpkg --add-architecture i386 && \
	apt-get -y update && \
	apt-get -y install --no-install-recommends wine wine32 && \
	apt-get -y clean
CMD mkdir /app
COPY asm68k.exe /app/
WORKDIR /src
ENTRYPOINT ["wine", "Z:\\app\\asm68k.exe"]
