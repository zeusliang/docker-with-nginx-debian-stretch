FROM myregistrydomain.com:5000/nginx

COPY $PWD/sources.list /etc/apt/sources.list

RUN apt-get -y update 
RUN apt-get -y install iputils-ping && \
    apt-get -y install iproute2 && \
    apt-get -y install wget && \
    apt-get -y install curl

