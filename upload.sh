set -e
set -o xtrace

export UPLOAD_URL=`curl "https://hopz.com/upload/app/put/?filename=ffmpeg&prefix=null"`
curl -X PUT --upload-file /ffmpeg-static/bin/ffmpeg "$UPLOAD_URL"
export DOWNLOAD_URL=`curl "https://hopz.com/upload/app/get/?filename=ffmpeg&prefix=null"`
echo "\nffmpeg $DOWNLOAD_URL \n"

export UPLOAD_URL=`curl "https://hopz.com/upload/app/put/?filename=ffprobe&prefix=null"`
curl -X PUT --upload-file /ffmpeg-static/bin/ffprobe "$UPLOAD_URL"
export DOWNLOAD_URL=`curl "https://hopz.com/upload/app/get/?filename=ffprobe&prefix=null"`
echo "\nffprobe $DOWNLOAD_URL \n"