build:
	docker build -t gcr.io/mateo-burillo-ns/securityhub-resources .

push: build
	docker push gcr.io/mateo-burillo-ns/securityhub-resources
