.DEFAULT_GOAL: help
.PHONY: help build bash install install-dev up restart down run

help:
	@sed -rn 's/^([a-zA-Z_-]+):.*## (.*)$$/"\1" "\2"/p' < $(MAKEFILE_LIST) | xargs printf "make %-20s# %s\n"

build: ## build image
	docker-compose build --no-cache --force-rm awesome-php
bash: ## run service bash
	docker-compose run --rm awesome-php bash
install: ## install production only requirements
	docker-compose run --rm awesome-php bash -c "composer install --no-dev --no-cache"
install-dev: ## install requirements
	docker-compose run --rm awesome-php bash -c "composer install --no-cache"
up: ## up composition
	docker-compose up -d --force-recreate
restart: ## restart composition
	docker-compose restart
down: ## stop composition
	docker-compose down --remove-orphans
run: ## run composition
	docker-compose up --force-recreate
