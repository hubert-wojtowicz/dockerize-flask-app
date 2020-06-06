# use base container with python preinstalled
FROM python:3.7.3-stretch

# set application path
WORKDIR /app

# copy all current directory
COPY . /app

# get all dependencies
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# inform intention is tcp web app on default port 80 
EXPOSE 80

# execute python script with flask endpoint
CMD ["python", "hello.py"]