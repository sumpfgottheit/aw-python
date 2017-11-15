FROM python:3.6-alpine3.6
MAINTAINER florian.sachs@gmx.at

RUN apk update 
RUN apk add bash openblas-dev openblas musl-dev postgresql-client postgresql-dev git curl linux-headers
RUN pip install numpy 
RUN pip install psycopg2 
RUN pip install flask hug sqlalchemy docopt ipython click flask-restplus logdna redis requests records colorama uwsgi

RUN rm -fr /tmp/* /var/cache/apk/*


