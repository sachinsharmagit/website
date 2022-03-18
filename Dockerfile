From ubuntu

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

RUN apt-get -y install apache2

ADD . /var/www/html/

ENTRYPOINT apachectl -D FOREGROUND