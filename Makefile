.PHONY: all
all:
	python3 setup.py sdist

.PHONY: clean
clean:
	cd docs && make clean

.PHONY: docs
docs:
	cd docs && make html

.PHONY: lint
lint:
	pylint kutils

.PHONY: format
format:
	black kutils

.PHONE: setup
setup:
	pip install -r requirements.txt

.PHONE: test
test:
	pytest

.PHONY: docs
viewdocs: docs
	cd docs/build/html && python3 -m http.server

