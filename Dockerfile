FROM python:2.7.14-alpine

WORKDIR /app
COPY . /app

EXPOSE 5000

RUN pip install -r flask
RUN pip install -r sqlite3
CMD FLASK_APP=api.py flask run --host="::"
