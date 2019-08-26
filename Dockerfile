# Bind /sys directory on the host to /sys container directory
FROM arm32v7/python:3.7-alpine

COPY qemu-arm-static /usr/bin

WORKDIR /usr/src/app

RUN pip install prometheus_client

COPY main.py .

CMD [ "python", "./main.py" ]



