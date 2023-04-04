FROM ubuntu

RUN apt update && apt install -y gcc gcc-multilib

COPY ./lr2.c .
COPY ./lr2.s .

RUN gcc ./lr2.c -o prClr2
RUN gcc -m32 -no-pie ./lr2.s -o prAlr2
