FROM python:3.7-alpine
WORKDIR /home/myapp/

RUN apk update

COPY requirements.in .

RUN pip install -U pip pip-tools \
&& pip-compile requirements.in \
&& pip-compile --upgrade \
&& pip-sync

COPY app.py .

EXPOSE 8080

CMD python3 ./app.py