IMAGE ?= kubextender/pvcexec-mc
TAG ?= LATEST
buildimage:
	docker build -t $(IMAGE):$(TAG) .
pushimage:
	docker push $(IMAGE):$(TAG)
smoke_test:
	docker run -it $(IMAGE):$(TAG)