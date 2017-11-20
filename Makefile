build:
	docker build -t ssube/nexus-ext .

deploy:
	docker push ssube/nexus-ext
