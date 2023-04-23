VERSION=$(shell git describe --tags --always)

.PHONY: build
# build
build:
	go build -ldflags "-X main.Version=$(VERSION)" -o ~/go/bin/ ./...