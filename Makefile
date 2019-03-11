buildimage:
	docker build -t kodiraj.ga:5001/pvcm:latest .

smoke_test:
	docker run -it kodiraj.ga:5001/pvcm:latest