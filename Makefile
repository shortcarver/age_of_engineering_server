build:
	docker build --progress=plain --no-cache . --tag minecraft-server
up:
	docker-compose up
down:
	docker-compose down