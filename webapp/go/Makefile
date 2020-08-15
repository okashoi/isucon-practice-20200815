all: build

.PHONY: clean
clean:
	rm -rf torb

.PHONY: build run
build:
	go build -v -o torb src/torb/app.go

run: build
	../env.sh && ./torb

run/docker: build
	./run_docker.sh

fmt:
	go fmt ./src/torb && goimports -w ./src/torb
