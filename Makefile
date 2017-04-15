all: build

build:
	@docker build --tag=hub.goodrain.com/ubuntu:latest .

release: build
	@docker build --tag=hub.goodrain.com/ubuntu:$(shell cat VERSION) .
