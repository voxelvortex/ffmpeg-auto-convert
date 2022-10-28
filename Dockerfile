FROM debian

RUN mkdir -p /data && chmod +rw /data -R
WORKDIR /data
ADD ./auto_convert.sh /data/auto_convert.sh

RUN apt-get update && apt-get install -y ffmpeg ffmpeg-*

ENTRYPOINT bash -c "/data/auto_convert.sh /data"

