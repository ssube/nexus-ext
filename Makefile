NEXUS_VERSION := $(shell cat Dockerfile | grep FROM | grep nexus3 | sed 's/.*nexus3:\([0-9\\.]*\)/\1/')

build:
	docker build -t ssube/nexus-ext:$(NEXUS_VERSION) .

deploy:
	docker push ssube/nexus-ext:$(NEXUS_VERSION)
