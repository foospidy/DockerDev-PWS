PROJECT_DIR?=$$HOME/dev

build:
	docker build -t pws-dev .

build-no-cache:
	docker build --no-cache -t pws-dev .

run:
	docker run -i -v $(PROJECT_DIR)/PWS/:/PWS/ -t pws-dev /bin/bash
