dev:
	docker run -p 8080:8080 -e NODE_ENV=development korotovegor/docker-project-74 make dev

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

build:
	docker compose -f docker-compose.yml build app

push:
	docker compose -f docker-compose.yml push app
