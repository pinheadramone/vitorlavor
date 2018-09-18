FROM centos:latest

RUN yum update -y  && \
yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
yum install -y python36u python36u-libs python36u-devel python36u-pip && \
yum install -y git 

CMD ["pip3.6" "install" "flask"]

EXPOSE 5000



