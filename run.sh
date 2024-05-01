#!/bin/bash
# build a docker image that
# supports a build environment 
# (programming languages, tools etc)
set -e;
set -o xtrace;

docker build -t ffmpeg-static .
ls -la /ffmpeg-static
ls -la /ffmpeg-static/bin
#docker run -t ffmpeg-static
#./build.sh -j4
docker run -dt --name ffmpeg-static ffmpeg-static /bin/bash -c "echo 'Hello World'; /bin/bash"
ls -la /ffmpeg-static
ls -la /ffmpeg-static/bin
