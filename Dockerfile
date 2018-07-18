FROM ubuntu:16.04
#MAINTAINER Yingru Xu <yingru@cyverse>
#LABEL version="1.1" description="This Dockerfile is for diamond"

RUN apt-get update && apt-get install -y build-essential \
                                         git \
                                         python \
                                         wget \
                                         unzip 

RUN wget http://github.com/bbuchfink/diamond/releases/download/v0.9.22/diamond-linux64.tar.gz
RUN tar xzf diamond-linux64.tar.gz
ENV PATH=/:$PATH
RUN echo "this is a test!"
#RUN touch nr.faa reads.fna

#CMD diamond makedb --in nr.faa -d nr | diamond blastx -d nr -q reads.fna -o matches.m8
