FROM python:2-slim
MAINTAINER Jian Li <gunine@sk.com>

RUN pip install --no-cache-dir pyyaml
RUN apt-get update && apt-get install -y curl dnsutils

COPY requirements.txt /

RUN pip install -r requirements.txt

CMD ["python"]
