#!/bin/bash

CONF=/etc/motion/motion.conf

if [ ! -z "${MOTION_DISABLE_IMAGE_OUTPUT}" ];then
    sed -i -e 's/^output_pictures on/output_pictures off/' "${CONF}"
fi

if [ ! -z "${MOTION_DISABLE_MOVIE_OUTPUT}" ];then
    sed -i -e 's/^ffmpeg_output_movies on/ffmpeg_output_movies off/' "${CONF}"
fi

motion
