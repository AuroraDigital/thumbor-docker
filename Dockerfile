FROM minimalcompact/thumbor

RUN apt-get update && \
    apt-get install -y ffmpeg


COPY thumbor.conf /etc/thumbor.conf
