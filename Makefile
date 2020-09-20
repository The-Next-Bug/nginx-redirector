
IMAGE=redirector
BUILD_FLAGS=--rm

all: build

build:
	docker build $(BUILD_FLAGS) --tag $(IMAGE) .

push: build
	docker push $(IMAGE)
	
ci: BUILD_FLAGS=--force-rm --pull
ci: IMAGE=registry.digitalocean.com/shelf/redirector
ci: build push

clean:
	docker rmi ${IMAGE}

.PHONY: ci build push
