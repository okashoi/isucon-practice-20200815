setup/seed:
	cd bench && make prepare/bench

run/migration:
	until test $$(curl -L http://localhost/initialize -o /dev/null -w '%{http_code}\n' -s |grep '204' > /dev/null;echo $$?) -eq 0;do echo "awaiting db ready" && sleep 1;done

server/docker/run: setup/seed
	docker-compose up -d

server/docker/stop:
	docker-compose stop

server/docker/logs:
	docker-compose logs -f
