NEXUS_VERSION := $(shell cat Dockerfile | grep FROM | sed 's/.*nexus3:\([0-9\\.]*\)/\1/')

build:
	docker build -t ssube/nexus-ext:$(NEXUS_VERSION) .

deploy:
	docker push ssube/nexus-ext:$(NEXUS_VERSION)
