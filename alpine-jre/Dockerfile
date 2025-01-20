FROM alpine:3.15.3
 
ENV LANG=zh_CN.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV JRE_HOME=/usr/lib/jvm/java-17-openjdk/jre
ENV PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
ENV JAVA_VERSION=17.0.13
ENV JAVA_ALPINE_VERSION=17.0.13_p11-r0
RUN sed -i "s#https://dl-cdn.alpinelinux.org#http://mirrors.aliyun.com#g" /etc/apk/repositories;\
apk update; \
apk add --no-cache openjdk17=17.0.13_p11-r0 bash curl tini; \
rm -rf /var/cache/apk/*
