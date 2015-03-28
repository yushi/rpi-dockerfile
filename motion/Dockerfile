FROM resin/rpi-raspbian

RUN apt-get update && apt-get install -y motion
RUN sed -i -e 's/^daemon on/daemon off/' -e 's/^webcontrol_localhost on/webcontrol_localhost off/' -e 's/^stream_localhost on/stream_localhost off/' /etc/motion/motion.conf

ADD /start_motion.sh /start_motion.sh
RUN chmod +x /start_motion.sh

EXPOSE 8080 8081

CMD /start_motion.sh