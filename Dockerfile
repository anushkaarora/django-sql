FROM python:3

ENV PYTHONUNBUFFERED 1

WORKDIR /blog

RUN pip3 install django 

RUN pip3 install pytz

RUN pip3 install mysqlclient

RUN pip3 install sqlparse

ADD . /blog/

ENTRYPOINT ["python", "manage.py", "runserver"] 

RUN python manage.py migrate
