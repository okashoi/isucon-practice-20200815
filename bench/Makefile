all: build

.PHONY: build
build:
	go install ./src/cmd/...

.PHONY: build-linux
build-linux:
	GOOS=linux GOARCH=amd64 go install ./src/cmd/...
	mv bin/linux_amd64/bench bin.Linux.x86_64/bench

build-osx:
	GOOS=darwin GOARCH=amd64 go install ./src/cmd/...
	mv ${GOPATH}/bin/darwin_amd64/bench bin.Darwin.x86_64/bench

.PHONY: race
race:
	go install -race ./src/cmd/...

clean:
	rm -f isucon8q-initial-dataset.sql.gz
	go clean -r -n -x -cache -testcache

prepare/bench: build
	go build -o gen-initial-dataset src/cmd/gen-initial-dataset/main.go 
	./gen-initial-dataset
