FROM python:3.8.10-slim
COPY ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt && rm -rf /tmp/requirements.txt
CMD ["python", "/app/calbot.py"]