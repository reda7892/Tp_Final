FROM ubuntu:16.04

WORKDIR /mydir

RUN apt-get update && apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs


COPY /. ./

RUN npm install 

ENV API_URL=http://127.0.0.1:8000/


EXPOSE 5000

CMD [ "npm","start" ]
