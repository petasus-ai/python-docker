FROM python:2-slim
MAINTAINER Jian Li <gunine@sk.com>

RUN pip install --no-cache-dir pyyaml

CMD ["python"]
