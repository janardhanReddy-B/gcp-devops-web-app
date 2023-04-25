FROM python:3.9-slim-buster

ENV APPENV=dev

RUN apt-get update && apt-get install -y curl

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

COPY app.py /

EXPOSE 11888

CMD [ "python", "/app.py" ]
