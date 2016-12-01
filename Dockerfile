FROM centos
# build the service
RUN curl https://raw.githubusercontent.com/xonsh/inabox/ssl/bootstrap > bootstrap
RUN cat bootstrap
RUN /bin/sh bootstrap
# launch systemd when run
EXPOSE 80
CMD ["/usr/sbin/init"]