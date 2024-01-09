FROM python:3.8.10-slim
COPY ./requirements.txt /tmp/requirements.txt


ENV LANG en_IN.UTF-8
ENV LC_NUMERIC en_IN.UTF-8

RUN apt-get update && \
    apt-get install -y locales && \
    sed -i -e 's/# en_IN UTF-8/en_IN UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    pip install --no-cache-dir -r /tmp/requirements.txt && rm -rf /tmp/requirements.txt