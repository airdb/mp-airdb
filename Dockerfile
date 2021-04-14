FROM node:14.16.1

LABEL Maintainer="dean <dean@airdb.com>" \
      Description="https://discuz.com/docs/"

ARG DEBIAN_FRONTEND=noninteractive

ADD "https://dl.discuz.chat/uniapp_latest.zip" /tmp/uniapp_latest.zip


RUN unzip /tmp/uniapp_latest.zip &&  \
	mv uniapp_* /srv/uniapp

WORKDIR /srv/uniapp

RUN sed -i 's/discuz.chat/test-sg.baobeihuijia.com/g' .env.production && \
	sed -i '/name/s@DZQ@airdb@g' src/manifest.json && \
	sed -i '/appid/s@\"\"@\"wxf7b5556f34553852\"@g' src/manifest.json && \
	ls 

RUN npm install && \
	npm install --global cross-env 
#RUN npm run build:mp-weixin
