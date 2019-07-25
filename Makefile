OUTPUT_DIR := dist

.PHONY: cli dist dist-wheel test

all: dist


dist:
	python setup.py sdist
	python setup.py bdist_wheel


dist-wheel:
	python setup.py bdist_wheel


ext:
	python setup.py build_ext --inplace


test:
	python -m pytest tests/


clean:
	rm -rf build/ .pytest_cache/ *.egg-info dist/ .coverage __pycache__/


manylinux:
	docker image build -t danielbok/copulae_manylinux -f manylinux.Dockerfile .
	rm -rf dist/*
	docker container run --rm -v C:/Projects/copulae/dist:/dist danielbok/copulae_manylinux
