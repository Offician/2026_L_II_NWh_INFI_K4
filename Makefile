deps:

	pip install -r requirements.txt 

	pip install -r test_requirements.txt

lint:

	flake8 hello_world test

run:

	python main.py

.PHONY: test
test:

	PYTHONPATH=. py.test --verbose -s

docker_build:
	docker build -t hello-world-printer-k4-2026 .


docker_run:docker_build 

	docker run --name hello-world-printer-k4-2026-dev -p 5000:5000 -d hello-world-printer-k4-2026 



TAG=$(USERNAME)/hello-world-printer-k4-2026 

docker_push: docker_build 

	@echo "$$DOCKER_PASSWORD" | docker login --username $(USERNAME) --password-stdin
	docker tag hello-world-printer-k4-2026 $(TAG)
	docker push $(TAG)
	docker logout