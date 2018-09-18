FROM centos:latest

RUN yum update -y  && \
yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
yum install -y python36u python36u-libs python36u-devel python36u-pip && \
yum install -y git 

RUN pip3.6 install --upgrade pip

RUN pip3.6 install Flask

COPY ./app/index.py /opt/

EXPOSE 5000



