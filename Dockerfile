FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

EXPOSE 80
VOLUME ["/etc/nginx/enabled-sites"]

RUN pacman -Syu nginx --needed --noconfirm

ADD nginx.conf /etc/nginx/nginx.conf
ADD run /service/nginx/run
