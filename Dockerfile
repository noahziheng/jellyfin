FROM linuxserver/jellyfin:latest

RUN apt update && \
    apt install wget fonts-noto-cjk-extra intel-media-va-driver-non-free vainfo -y && \
    wget https://repo.jellyfin.org/releases/server/ubuntu/versions/jellyfin-ffmpeg/4.4.1-1/jellyfin-ffmpeg_4.4.1-1-focal_amd64.deb && \
	dpkg -i jellyfin-ffmpeg_4.4.1-1-focal_amd64.deb && \
	cp /usr/lib/x86_64-linux-gnu/libva* /usr/lib/jellyfin-ffmpeg/lib/ && \
	cp /usr/lib/x86_64-linux-gnu/libigdgmm* /usr/lib/jellyfin-ffmpeg/lib/
