build:
	docker build -t gcr.io/mateo-burillo-ns/cnvh-resources .

push: build
	docker push gcr.io/mateo-burillo-ns/cnvh-resources
