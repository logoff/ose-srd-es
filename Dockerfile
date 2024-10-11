FROM python:3-slim

WORKDIR /site

# upgrade pip
RUN pip install --upgrade pip

# install Poetry
RUN apt-get update && \
    apt-get install -y curl gcc
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH=/root/.local/bin:$PATH

# copy project files and install dependencies
COPY pyproject.toml poetry.lock ./
RUN poetry install --no-root

EXPOSE 8000

ENTRYPOINT ["poetry", "run", "mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]
