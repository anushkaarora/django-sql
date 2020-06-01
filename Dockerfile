FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /blog
WORKDIR /blog
# Install pre-reqs
RUN apt-get install -y python3 openssh-server


# download and install pip
RUN apt-get install -y python3-pip



ENTRYPOINT ["python3", "./manage.py", "runserver"]
ENTRYPOINT ["python3", "./manage.py", "migrate"]

COPY . /blog/