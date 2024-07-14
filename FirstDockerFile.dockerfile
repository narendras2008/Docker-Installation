##We want to choose image as ubuntu latest
FROM UBUNTU:latest

## Initialize workdirectory
WORKDIR /app

## Select copy directory

COPY ./app

## Run command

RUN apt-get update && apt-get install -y python3 python3-pip

##set environment variable
ENV NAME World

#run command

CMD ["python3", "app.py"]