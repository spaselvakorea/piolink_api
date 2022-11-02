FROM tiangolo/uwsgi-nginx-flask:python3.8

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

ENV LISTEN_PORT 8090

EXPOSE 8090

COPY ./app /app
