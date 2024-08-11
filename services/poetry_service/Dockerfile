FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10

WORKDIR /app

COPY pyproject.toml /app/
COPY . /app/

RUN pip install --no-cache-dir poetry && poetry install

RUN chmod +x scripts/entrypoint.sh

ENTRYPOINT ["scripts/entrypoint.sh"]