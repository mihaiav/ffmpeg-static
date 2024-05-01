#!/bin/bash
# build a docker image that
# supports a build environment 
# (programming languages, tools etc)
set -e;
set -o xtrace;

docker build -t ffmpeg-static .
ls -la /ffmpeg-static
ls -la /ffmpeg-static/bin