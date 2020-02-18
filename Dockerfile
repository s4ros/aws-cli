FROM python:3-alpine

RUN apk update
RUN pip install -U awscli

CMD [ "aws" ]