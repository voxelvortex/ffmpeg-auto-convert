#! /bin/bash
SEARCH_DIR=$1

# Make sure a user is supplied
if [[ -z "$SEARCH_DIR" ]]; then
	echo "Search directory is required"
	echo "./auto_convert <dir>"
	exit
fi


find $SEARCH_DIR -type f | grep -vi mp4 | xargs -I % ffmpeg -i % -vcodec libx265 %.mp4 -n
