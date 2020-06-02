FROM python:3


ENV PYTHONUNBUFFERED 1

RUN mkdir /blog

WORKDIR /blog



RUN pip3 install django 

RUN pip3 install pytz

RUN pip3 install mysqlclient

RUN pip3 install sqlparse

COPY manage.py /blog/

ENTRYPOINT ["python3", "manage.py", "runserver"]
ENTRYPOINT ["python3", "manage.py", "makemigrations"]
ENTRYPOINT ["python3", "manage.py", "migrate"]

