FROM ubuntu:latest

LABEL Name=clangdockercompile Version=0.0.1

RUN apt-get -y update && apt-get install -y

RUN apt-get -y install clang

ADD src /usr/src/docker-compile
WORKDIR /usr/src/docker-compile

RUN clang++ -o Main Main.cpp

CMD ["./Main"]
