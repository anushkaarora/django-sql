FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /blog
WORKDIR /blog
COPY requirements.txt /blog/
RUN pip3 install -r requirements.txt
COPY . /blog/

ENTRYPOINT ["python3", "./manage.py", "runserver"]
ENTRYPOINT ["python3", "./manage.py", "migrate"]
