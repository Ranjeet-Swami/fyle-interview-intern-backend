FROM python:3.8-slim-bookworm

WORKDIR /app

COPY requirements.txt ./


RUN pip install -r requirements.txt

COPY . .

ENV FLASK_APP=core/server.py

EXPOSE 8000

CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]