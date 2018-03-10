FROM python:3.6.1
MAINTAINER Samuel Baruffi and Nicolas Agostini Baruffi

#Python modules that should be loaded
COPY ./requirements.txt /tmp/.
RUN pip install -r /tmp/requirements.txt

RUN mkdir /app


COPY bottle /app
WORKDIR /app

EXPOSE 80

CMD [ "python", "./routes.py" ]