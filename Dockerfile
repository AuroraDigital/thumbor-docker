FROM python:3.9.11-slim-buster


# FFMPG 3.2.4 recommended - https://thumbor.readthedocs.io/en/latest/gifv.html#gifv

RUN apt-get update && \
    apt-get install -y ffmpeg gifsicle && pip install --upgrade pip && \
    ln -s /usr/bin/ffmpeg /usr/local/bin/ffmpeg && \
    ln -s /usr/bin/ffprobe /usr/local/bin/ffprobe

RUN pip install thumbor thumbor-video-engine thumbor-plugins-gifv

COPY thumbor.conf /etc/thumbor.conf

CMD ["thumbor"]
