FROM python:3.9.11-slim-buster


# FFMPG 3.2.4 recommended - https://thumbor.readthedocs.io/en/latest/gifv.html#gifv

RUN apt-get update && \
    apt-get install -y ffmpeg gifsicle libcurl4-openssl-dev build-essential libssl-dev && \
    pip install --upgrade pip && \
    ln -s /usr/bin/ffmpeg /usr/local/bin/ffmpeg && \
    ln -s /usr/bin/ffprobe /usr/local/bin/ffprobe

RUN pip install thumbor thumbor-video-engine tc_aws thumbor-plugins-gifv opencv-python-headless

COPY thumbor.conf /etc/thumbor.conf

CMD ["thumbor", "--use-environment=true"]
