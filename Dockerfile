FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /app

ADD . /app/

RUN apt-get update && apt-get install -y cmake libgtest-dev libboost-test-dev nano clang

RUN mkdir out && cd out && cmake ../ && make && ./expression_parser_tests

# && rm -rf /var/lib/apt/lists/* 


