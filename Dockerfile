FROM ubuntu:latest


ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y nginx mariadb-server mariadb-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80 3306

CMD service mariadb start && nginx -g 'daemon off;'