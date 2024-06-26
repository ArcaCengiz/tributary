FROM python:3.11

COPY ./entrypoint.py .
COPY ./requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD gunicorn --bind 0.0.0.0:8000 entrypoint:app
