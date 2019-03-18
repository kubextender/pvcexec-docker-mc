IMAGE ?= kodiraj.ga:5001/mcpvc/runner-docker
TAG ?= latest
buildimage:
	docker build -t $(IMAGE):$(TAG) .
pushimage:
	docker push $(IMAGE):$(TAG)
smoke_test:
	docker run -it $(IMAGE):$(TAG)