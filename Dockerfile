FROM python:3.13-alpine3.22
MAINTAINER Jian Li <gunine@sk.com>

RUN apk add --update --no-cache curl bind-tools bash

COPY requirements.txt /

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python"]
