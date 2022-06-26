#!/bin/bash

args=$@
web_container=django-study_web_1

docker exec -it ${web_container} python3 ./app/manage.py ${args}