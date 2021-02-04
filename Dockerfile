# BUILD #################
FROM ubuntu:20.04

RUN apt-get update &&\
    apt-get install -y \
        imagemagick=8:6.9.10.23+dfsg-2.1ubuntu11.2 \
    &&\
    apt-get clean all

ENTRYPOINT [ "convert" ]
CMD ["-version"]
