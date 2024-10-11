.PHONY: site-version
site-version:
	poetry version --short

.PHONY: build-site
build-site:
	poetry install --no-root
	poetry run mkdocs build

.PHONY: clean-site
clean-site:
	rm -rf dist/

.PHONY: serve-site
serve-site: build-site
	poetry run mkdocs serve --dev-addr=0.0.0.0:8000

.PHONY: publish-site
publish-site: build-site
	poetry run mkdocs gh-deploy --force

.PHONY: docker-build
docker-build:
	docker image build --tag=ose-srd-es:$$(poetry version --short) .

.PHONY: docker-serve-site
docker-serve-site: docker-build
	docker container run --rm -it \
		-v $$(pwd)/mkdocs.yml:/site/mkdocs.yml \
		-v $$(pwd)/src:/site/src \
		-v $$(pwd)/main.py:/site/main.py \
		-v $$(pwd)/.git:/site/.git \
		-p 8000:8000 \
		ose-srd-es:$$(poetry version --short)
