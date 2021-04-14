all: build run

run:
	docker run -it -v `pwd`:/srv/uniapp/dist/build/ mp-airdb npm run build:mp-weixin

## 若您需构建红色主题
red:
	docker run -it -v `pwd`:/srv/uniapp/dist/build/ mp-airdb npm run build:mp-weixin-play

build:
	docker build -t mp-aridb .

bash:
	docker run -it -v `pwd`:/srv/release/ mp-airdb bash
