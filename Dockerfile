FROM docku/rsyslogd
MAINTAINER Jon Chen <bsd@voltaire.sh>

EXPOSE 80

RUN pacman -Syu nginx --needed --noconfirm

ADD nginx.conf /etc/nginx/nginx.conf
ADD run /service/nginx/run
ADD logging.conf /etc/rsyslog.d/nginx.conf
