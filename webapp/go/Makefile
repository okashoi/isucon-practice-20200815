all: build

.PHONY: clean
clean:
	rm -rf torb

.PHONY: build run
build:
	go build -v -o torb src/torb/app.go

run: build
	../env.sh && ./torb
