FROM alpine as builder
RUN apk add unzip
RUN mkdir /opt/ndk-tmp
RUN cd /opt/ndk-tmp && wget -q https://dl.google.com/android/repository/android-ndk-r17-linux-x86_64.zip
RUN cd /opt/ndk-tmp && unzip android-ndk-r17-linux-x86_64.zip
RUN cd /opt && tree > ft.txt