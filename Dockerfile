FROM quay.io/jupyter/scipy-notebook:latest

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /tmp/requirements.txt
