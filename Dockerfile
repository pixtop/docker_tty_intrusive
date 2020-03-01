FROM debian:latest

WORKDIR /root
ADD exploit.c ./
ADD pwned.txt ./

RUN apt update \
    && apt -y install gcc \
    && gcc exploit.c -o exploit

CMD ["/root/exploit"]
