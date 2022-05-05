FROM python:3.6-alpine

RUN apk add --no-cache \
	graphviz 

ADD requirements.txt ./
RUN pip3 install -r requirements.txt

ADD server.py ./
CMD hug -f server.py
