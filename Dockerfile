# Move to /dash

FROM python:3.7

WORKDIR /

COPY requirements.txt /

RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

COPY . /

EXPOSE 8000

ENTRYPOINT ["gunicorn","--bind=0.0.0.0:8080","main:server"]
