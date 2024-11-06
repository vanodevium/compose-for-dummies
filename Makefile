THIS_FILE := $(lastword $(MAKEFILE_LIST))

#.PHONY: help build bash install install-dev up restart down run

help:
	make -pRrq  -f $(THIS_FILE) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
build:
	docker-compose build --no-cache --force-rm awesome-php
bash:
	docker-compose run --rm awesome-php bash
install:
	docker-compose run --rm awesome-php bash -c "composer install --no-dev --no-cache"
install-dev:
	docker-compose run --rm awesome-php bash -c "composer install --no-cache"
up:
	docker-compose up -d --force-recreate
restart:
	docker-compose restart
down:
	docker-compose down --remove-orphans
run:
	docker-compose up --force-recreate
