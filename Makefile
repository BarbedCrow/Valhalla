.PHONY: help build run test clean migrate

help:
	@echo "Available commands:"
	@echo "  make build      - Build the application"
	@echo "  make run        - Run the application"
	@echo "  make test       - Run tests"
	@echo "  make clean      - Clean build artifacts"
	@echo "  make migrate    - Run database migrations"
	@echo "  make docker-up  - Start Docker containers"
	@echo "  make docker-down - Stop Docker containers"

build:
	go build -o bin/app cmd/server/main.go

run:
	go run cmd/server/main.go

test:
	go test -v ./...

clean:
	rm -rf bin/

migrate:
	# TODO: Add migration command

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down
