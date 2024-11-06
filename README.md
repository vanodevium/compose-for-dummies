# COMPOSE FOR DUMMIES

> This repo will be overwritten with **push --force** everytime

## About

It is just an **EXAMPLE** of configuration.

Don't use for production as is. Configure it for you needs!

Use your brain!

## RENAME

This set up is configured for the project with name **awesome**.

You **MUST** rename it.

Files for renaming:

- ./docker/Caddyfile
- ./docker/nginx.conf
- docker-compose.yml
- Makefile

## Requirements

- docker-compose
- make

## Initialization

First of all copy .env.example into .env and set up HOST variable as minimum

## WEB

Use the one and only one **-web** service in docker-compose.yml: **nginx** or **caddy**

## Makefile

Just run `make` for list of available commands

```
build       # build PHP image
bash        # run bash shell in PHP container
install     # install requirements without dev section
install-dev # install requirements
run         # alias for docker-compose up
up          # alias for docker-compose -d up
restart     # alias for docker-compose restart
down        # alias for docker-compose down
```

## License

**This** is open-sourced project licensed under the [rustricted.dev](./LICENSE.md)

[Vano Devium](https://github.com/vanodevium/)

---

Made with ❤️ in Ukraine