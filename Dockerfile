FROM node:latest

RUN apt-get update

RUN apt-get install -y git python3 

RUN git --version && python3 --version

WORKDIR /pxt

RUN git clone https://github.com/microsoft/pxt-adafruit.git .

RUN npm install

EXPOSE 3232 3233

CMD ["node","node_modules/pxt-core/built/pxt.js","serve","--noBrowser","--noSerial","--hostname","0.0.0.0"]
