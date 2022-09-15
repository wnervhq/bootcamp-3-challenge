FROM python:3
WORKDIR /usr/src/app
COPY . .
RUN apt-get -y update

RUN pip install -U pip pip-tools \
&& pip-compile requirements.in \
&& pip-compile --upgrade \
&& pip-sync

EXPOSE 5000
CMD ["python3","./myapp.py"]