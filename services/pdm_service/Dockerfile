FROM python:3.10-slim

WORKDIR /app

COPY pyproject.toml /app/

COPY . /app/

RUN pip install --no-cache-dir pdm && pdm install

RUN chmod +x scripts/entrypoint.sh

ENTRYPOINT ["scripts/entrypoint.sh"]
