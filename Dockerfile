FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /blog
WORKDIR /blog

# Install pre-reqs
RUN apt-get install -y python3 


COPY manage.py /blog/

ENTRYPOINT ["python3", "manage.py", "runserver"]
ENTRYPOINT ["python3", "manage.py", "migrate"]

