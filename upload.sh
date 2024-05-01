set -e
set -o xtrace

export UPLOAD_URL=`curl https://hopz.com/upload/app/put/?filename=ffmpeg`
curl -X PUT -v --upload-file /ffmpeg-static/bin/ffmpeg "$UPLOAD_URL"
export DOWNLOAD_URL=`curl https://hopz.com/upload/app/get/?filename=ffmpeg`
echo "ffmpeg $DOWNLOAD_URL"

export UPLOAD_URL=`curl https://hopz.com/upload/app/put/?filename=ffprobe`
curl -X PUT -v --upload-file /ffmpeg-static/bin/ffprobe "$UPLOAD_URL"
export DOWNLOAD_URL=`curl https://hopz.com/upload/app/get/?filename=ffprobe`
echo "ffprobe $DOWNLOAD_URL"