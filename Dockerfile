FROM ubuntu:16.04
WORKDIR /opt
RUN apt-get update && apt-get install -y wget
RUN wget -O https://ftp.yz.yamagata-u.ac.jp/pub/eclipse/technology/epp/downloads/release/2024-06/R/eclipse-java-2024-06-R-win32-x86_64.zip
