SRC = $(wildcard notebooks/*.ipynb)

all: clean lab test docs

lab: $(SRC)
	nbdev_build_lib
	touch demo

docs: $(SRC)
	nbdev_build_docs
	touch docs

test:
	nbdev_test_nbs

release: bump dist
	twine upload --repository pypi dist/*

pypi: dist
	twine upload --repository pypi dist/*

bump:
	nbdev_bump_version

dist: clean
	python setup.py sdist bdist_wheel

clean:
	nbdev_clean_nbs
	nbdev_clean_nbs --fname examples
	rm -rf dist
