FROM node:alpine
MAINTAINER Hong-Da, Ke 

RUN mkdir -p /root/pxt-adafruit \
    && cd /root/pxt-adafruit \
    && npm install -g pxt \
    && pxt target adafruit

EXPOSE 80 3233

WORKDIR /root/pxt-adafruit

ENTRYPOINT ["pxt", "serve", "-h", "0.0.0.0", "-p", "80","--noBrowser"]
