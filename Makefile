all: build run

run:
	docker run -it -v `pwd`:/srv/uniapp/dist/build/ mp-airdb npm run build:mp-weixin

build:
	docker build -t mp-aridb .

