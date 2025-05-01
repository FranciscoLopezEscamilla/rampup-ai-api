FROM python:3.10
WORKDIR /code
COPY requirements.txt /code/requirements.txt
COPY .env /code/.env
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./api /code/api

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--app-dir", "api"]