FROM golang:1.12

# init,shでmysql clientを使っているので
RUN apt-get update -qq && apt-get install -y mariadb-client make

WORKDIR /opt/isucon
