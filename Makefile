default: init test docker-build

init:
	pip install -r requirements.txt

test:
	nosetests tests

freeze:
	pip freeze | grep -v "pkg-resources" > requirements.txt

docker-build:
	sudo docker build --tag "happydevelopperfr/python-administrative-communes:2020.05.0.0" .

docker-rm:
	sudo docker rm pac

docker-run: docker-rm
		sudo docker run --name pac happydevelopperfr/python-administrative-communes:2020.05.0.0

docker-it:
	sudo docker exec -it pac /bin/sh
