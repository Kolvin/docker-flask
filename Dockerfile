FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY src/requirements.txt /src/requirements.txt

WORKDIR /src

RUN pip install -r requirements.txt

COPY ./src /src

ENTRYPOINT [ "python" ]

CMD [ "entrypoint.py" ]
