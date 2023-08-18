
DOCKER_IMAGE := 904317604667.dkr.ecr.eu-west-1.amazonaws.com/test:latest

.PHONY: build

build:
	docker build --platform linux/amd64 -t ${DOCKER_IMAGE} .
	aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 904317604667.dkr.ecr.eu-west-1.amazonaws.com
	docker push ${DOCKER_IMAGE}