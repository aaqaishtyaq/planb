
.PHONY: build
build:
	@echo "Building dev Image"
	@sudo docker build -t planb-dev -f Dockerfile.dev .

.PHONY: run
run:
	@sudo docker run -t -i -v $(CURDIR):/go/src/github.com/aaqaishtyaq/planb planb-dev:latest bash

.PHONY: test
test:
	@go test -short -race ./...
