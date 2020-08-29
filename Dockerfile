FROM centos:7.6.1810

RUN yum install -y wget gcc gcc-c++ make git cmake
#RUN yum install -y Lmod
#ENV MODULEPATH=/etc/sw/modulefiles/
COPY build-cmake.sh /root
COPY modulefiles /etc/sw/modulefiles

RUN cd && git clone --depth=1 -b v0.15.4 https://github.com/spack/spack.git
ENV PATH=${PATH}:/root/spack/bin/
