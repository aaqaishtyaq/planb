
.PHONY: build
build:
	@echo "Building dev Image"
	@sudo docker build -t planb-dev -f Dockerfile.dev .

.PHONY: run
run:
	@sudo docker run -t -i -v /home/ubuntu/go/src/github.com/aaqaishtyaq/planb:/go/src/github.com/aaqaishtyaq/planb planb-dev:latest bash

.PHONY: test
test:
	@go test -short -race ./...
