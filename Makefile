build:
	# docker build --progress=plain --no-cache . --tag minecraft-server
	docker build --progress=plain . --tag minecraft-server
up:
	docker-compose up
down:
	docker-compose down
clean:
	rm -rf world/*
	rm -rf logs/*