
build:
	actool build --overwrite container runlola-v1.0.0-linux-amd64.aci

install: build
	sudo rkt --insecure-skip-verify fetch runlola-v1.0.0-linux-amd64.aci \
		&& sudo rkt image list

.PHONY: build install
