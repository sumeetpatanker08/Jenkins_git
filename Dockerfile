FROM python:3.8

ADD . /app
WORKDIR /app

CMD ["python","Code.py"]