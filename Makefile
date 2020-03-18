build:
	docker build -t vanillaforums .

start:
	docker-compose up -d

stop:
	docker-compose down --rmi all