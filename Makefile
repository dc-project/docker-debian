all: build

build:
	@docker build --tag=ysicing/debian:latest .

release: build
	@docker build --tag=ysicing/debian:$(shell cat VERSION) .
