FROM ubuntu

RUN apt-get update && apt-get install -y x11vnc xvfb firefox
RUN useradd -u 1555 -m -s /bin/bash firefox

USER firefox
WORKDIR /home/firefox

RUN mkdir ~firefox/.vnc

ENV PASSWORD 1234

RUN bash -c 'echo "firefox" >> /home/firefox/.bashrc'

COPY startup.sh /usr/local/bin/startup.sh

EXPOSE 5900
VOLUME /home/firefox/Documents

CMD ["/usr/local/bin/startup.sh"]
