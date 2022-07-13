FROM ubuntu:20.04

ARG BOMBSQUAD_VERSION="1.5.29"


RUN apt-get -y update && apt-get install -y python3.9 libpython3.9 locales libsdl2-2.0-0 wget && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

WORKDIR /app

COPY . .

EXPOSE 43210/udp

CMD ["/app/bombsquad_server"]
