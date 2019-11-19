check:
	ruby -ryaml -e "Dir['**/*.yaml'].each { |file| puts 'Validating ' + file; YAML.load(File.open(file)) }"

build:
	docker build -t gcr.io/mateo-burillo-ns/securityhub-resources .

push: build
	docker push gcr.io/mateo-burillo-ns/securityhub-resources
