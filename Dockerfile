FROM centos
RUN curl https://raw.githubusercontent.com/xonsh/inabox/ssl/bootstrap > bootstrap
RUN cat bootstrap
RUN /bin/sh bootstrap
