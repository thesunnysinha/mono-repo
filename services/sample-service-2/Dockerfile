FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

WORKDIR /app

COPY pyproject.toml poetry.lock /app/
COPY . /app/

RUN pip install --no-cache-dir poetry && poetry install --no-root

RUN chmod +x scripts/entrypoint.sh scripts/wait-for-it.sh 

ENTRYPOINT ["scripts/entrypoint.sh"]