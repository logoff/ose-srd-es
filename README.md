# Old-School Essentials SRD en español
[![Publish docs via GitHub Pages](https://github.com/logoff/ose-srd-es/actions/workflows/build.yml/badge.svg)](https://github.com/logoff/ose-srd-es/actions/workflows/build.yml) [![pages-build-deployment](https://github.com/logoff/ose-srd-es/actions/workflows/pages/pages-build-deployment/badge.svg?branch=gh-pages)](https://github.com/logoff/ose-srd-es/actions/workflows/pages/pages-build-deployment)

Traducción del System Reference Document (SRD) de Old-School Essentials (OSE) al español.

## Requisitos

* [Python](https://www.python.org/) 3.10+
* [Poetry](https://python-poetry.org/)
* [GNU Make](https://www.gnu.org/software/make/)
* [Docker](https://www.docker.com/) (opcional)

## Desarrollo

### Sin Docker

```
make serve-site
```

Abrir http://localhost:8000/ en un navegador web.


### Con Docker

#### Construir la imagen

```
make docker-build
```

#### Correr la imagen

```
make docker-serve-site
```

Abrir http://localhost:8000/ en un navegador web.
