####################
# LOCAL
####################

uid := $(shell id -u)
gid := $(shell id -g)

init: docker-down-clear docker-build docker-up

docker-up:
	export uid=$(uid) gid=$(gid); \
	docker-compose -f ./docker-compose.yml up -d

docker-build:
	export uid=$(uid) gid=$(gid); \
	docker-compose -f ./docker-compose.yml build

docker-down-clear:
	export uid=$(uid) gid=$(gid); \
	docker-compose -f ./docker-compose.yml down -v --remove-orphans

docker-down-clear:
	docker-compose -f ./docker-compose.yml down -v --remove-orphans

build:
	docker-compose -f ./docker-compose.yml run --rm go build -v ./cmd/apiserver