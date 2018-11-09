include makefiles/task.mk
include makefiles/deploy-ghpages.mk

export NAME ?= Harry Potter
NAME_IMAGE ?= arbildo/orbis-training-docker
DOCKER_TAG ?= 2.0.0
DOCKER_IMAGE ?= ${NAME_IMAGE}:${DOCKER_TAG}
DOCKER_VOLUME = ${PWD}/app:/app
USER = $(whoami)

install:
	docker run --volumes-from workspace -w /app $(DOCKER_IMAGE) npm install
start:
	docker run -d --volumes-from workspace -w /app -p 3030:1042 -p 35729:35729 $(DOCKER_IMAGE) npm start
release:
	docker run --workdir=/app -v ${DOCKER_VOLUME} ${DOCKER_IMAGE} npm run release
greet:
	@docker run -v ${PWD}/resources:/resources -e NAME="${NAME}" node:10.10.0-slim bash /resources/example.sh
	@bash ./resources/example.sh
resources:
	@echo "Hola arecursos!"
	@echo ${DOCKER_IMAGE}


project_workspace:
	docker rm -f workspace
	docker create -v /app/ --name workspace alpine
	docker cp ./ workspace:/app/

