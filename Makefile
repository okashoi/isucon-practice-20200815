setup/seed:
	cd bench && make prepare/bench

server/docker/run: setup/seed
	docker-compose up -d

server/docker/stop:
	docker-compose stop

server/docker/logs:
	docker-compose logs -f
