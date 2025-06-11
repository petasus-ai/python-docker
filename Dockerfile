FROM python:3-slim
MAINTAINER Jian Li <gunine@sk.com>

RUN pip install --no-cache-dir pyyaml
RUN apt-get update && apt-get install -y curl dnsutils
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /

RUN pip install -r requirements.txt

CMD ["python"]
