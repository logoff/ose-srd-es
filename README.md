# Old-School Essentials SRD en español
Traducción del System Reference Document (SRD) de Old-School Essentials (OSE) al español.

## Requisitos

* [Python](https://www.python.org/) 3.7+
* [Poetry](https://python-poetry.org/)
* [Docker](https://www.docker.com/) (opcional)

## Desarrollo

### Sin Docker

```
poetry install
poetry run mkdocs serve --dev-addr=0.0.0.0:8000
```

Abrir http://localhost:8000/ en un navegador web.


### Con Docker

#### Construir la imagen

```
docker build --tag=ose-srd-es:$(poetry version --short) .
```

#### Correr la imagen

```
docker container run --rm -it \
  -v $(pwd)/mkdocs.yml:/site/mkdocs.yml \
  -v $(pwd)/src:/site/src \
  -v $(pwd)/main.py:/site/main.py \
  -v $(pwd)/.git:/site/.git \
  -p 8000:8000 \
  ose-srd-es:$(poetry version --short)
```

Abrir http://localhost:8000/ en un navegador web.
