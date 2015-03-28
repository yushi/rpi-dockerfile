```
docker run --privileged -v /dev/video0:/dev/video0 -p 8081:8081 -p 8080:8080 -it --rm yushi/rpi-motion

# disable file output
docker run --privileged -v /dev/video0:/dev/video0 -p 8081:8081 -p 8080:8080 -e MOTION_DISABLE_MOVIE_OUTPUT=1 -e MOTION_DISABLE_IMAGE_OUTPUT=1 -it --rm yushi/rpi-motion
```
