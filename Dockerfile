FROM ubuntu:20.04
ARG pg_service_file=/code/.pg_service.conf
ARG pg_pass_file=/code/.pg_local_pass
ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get install -y python3 python3-pip 
RUN apt-get install -y postgresql-client

RUN mkdir /code
WORKDIR /code

ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

ENV PGSERVICEFILE ${pg_service_file}
ENV PGPASSFILE ${pg_service_file}
RUN chmod 600 ${pg_pass_file}