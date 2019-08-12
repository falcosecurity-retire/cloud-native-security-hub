sync:
	gsutil rsync -r -x ".git|LICENSE|Makefile|README.md" . gs://cloud-native-visibility-hub-resources
