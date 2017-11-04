# docker build -t xen-dev .
# docker run -ti -v $PWD:/opt xen-dev
FROM ubuntu:16.04
WORKDIR /opt/
RUN find /etc/apt/ -type f -exec sed -i 's/# deb-src/deb-src/g' {} +
RUN find /etc/apt/ -type f -exec sed -i 's/#deb-src/deb-src/g' {} +
RUN apt-get update -qq
RUN apt-get build-dep xen qemu -y
RUN apt-get install -y git
ENTRYPOINT [ "make" ]
