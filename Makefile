up:
	docker-compose up -d --build --force-recreate
build:
	docker-compose build

start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose restart

bash:
	#docker-compose exec airdb-dzq bash
	docker run -it  airdb-dzq bash
