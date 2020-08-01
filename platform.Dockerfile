FROM python:3.8.5-slim-buster

COPY . /app
WORKDIR /app

# Installing dependencies:
RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-root --no-dev -n