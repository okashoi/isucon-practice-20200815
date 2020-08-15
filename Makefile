setup/seed:
	cd bench && make prepare/bench

run/migration:
	until test $$(curl -L http://localhost/initialize -o /dev/null -w '%{http_code}\n' -s |grep '204' > /dev/null;echo $$?) -eq 0;do echo "awaiting db ready" && sleep 1;done

run/build/mac-bench:
	docker-compose run bench

server/docker/run: setup/seed
	docker-compose up -d --scale bench=0

server/docker/stop:
	docker-compose stop --remove-orphans

server/docker/down:
	docker-compose down

server/docker/logs:
	docker-compose logs -f
