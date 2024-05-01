set -e
set -o xtrace

export UPLOAD_URL=`curl https://hopz.com/upload/app/put/?filename=ffmpeg`
export DOWNLOAD_URL=`curl https://hopz.com/upload/app/get/?filename=ffmpeg`
curl -X PUT -v --upload-file /ffmpeg-static/bin/ffmpeg "$UPLOAD_URL"
curl -v "$DOWNLOAD_URL"