FROM python:3.9-slim

WORKDIR /programas/ingesta

RUN pip3 install PyMySQL cryptography boto3 pandas

COPY . .

CMD [ "python3", "./ingesta.py" ]
